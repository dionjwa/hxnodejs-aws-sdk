package js.npm.aws_sdk;

typedef DescribeAutoScalingGroupsParams = {
  @:optional var AutoScalingGroupNames :Array<String>;
  @:optional var MaxRecords :Int;
  @:optional var NextToken :String;
}

typedef TerminateInstanceParams = {
  var InstanceId :String;
  @:optional var ShouldDecrementDesiredCapacity :Bool;
}



typedef AutoScalingGroupInstance = {
  var InstanceId :String;
}

typedef AutoScalingGroup = {
  var AutoScalingGroupName :String;
  var MinSize :Int;
  var MaxSize :Int;
  var DesiredCapacity :Int;
  var Instances :Array<AutoScalingGroupInstance>;
  var Tags :Array<{Key:String,Value:String}>;
}

@:jsRequire("aws-sdk","AutoScaling")
extern class AutoScaling extends Service {
  /**
    In order to ensure that the AutoScaling object uses this specific API, you can construct the object by passing the
    apiVersion option to the constructor

    Version:
      2015-10-01
   **/
  @:overload(function (ver:{ apiVersion:String }):Void {})
  function new():Void;


  function describeAutoScalingGroups(params:DescribeAutoScalingGroupsParams, callback:js.Error->{AutoScalingGroups:Array<AutoScalingGroup>}->Void):Request;

  function terminateInstanceInAutoScalingGroup(params:TerminateInstanceParams, callback:js.Error->Dynamic->Void):Request;

  function setDesiredCapacity(params:Dynamic, callback:js.Error->Dynamic->Void):Request;
}
