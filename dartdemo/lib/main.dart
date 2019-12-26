import 'dart:core' as prefix0;
import 'dart:core';

import 'package:flutter/material.dart';

void main()
{
  var number = 24;
  //变量加到字符串输出使用$
  print("---------格式化输出----------");
  print("小明的年龄是$number岁");
  print("---------格式化输出----------");

  //~/为取整 %为取余 /为除以
  print("---------数字运算----------");
  var a = 12 ~/ 2.1;
  var b = 12 % 2.2;
  var c = 12 / 2.2;
  print("a的值是$a");
  print("b的值为$b");
  print("c的值为$c");

  //isEven检查是否返回偶数 isOdd检查是否返回奇数
  var d = 12;
  print(d.isEven);
  print(d.isOdd);

  var e = 1.23;
  print(e.floor()); //返回小于或等于数字的最大整数
  print(e.round()); //四舍五入
  print(e.ceil()); //小于它的最大整数
  print(e.toInt());
  print("---------数字运算----------");

  print("---------字符串操作----------");
  var f = "ABCDEFG";
  print(f.toLowerCase());//大写的变小写

  var g = "abcdefg";
  print(g.toUpperCase());//小写变大写

  var h = "hello,world,!";
  print(h.replaceAll("hello", "love"));
  print(h.split(",")); //指定分隔符返回字符列

  var i = "aabbccdd";
  print(i.contains("a"));//返回是否包含
  print(i.substring(2,5)); //返回含头不含尾的子字符串
  print(i.startsWith("a"));//检查是否以a开头，同理还有endsWith()检查是否以d结尾
  print("---------字符串操作----------");

  print("---------集合（数组）操作----------");
  var list1 = [1,2,3,4]; //直接赋值
  list1.shuffle(); //打乱顺序
  print(list1);

  var list2 = new List(); //构造方法
  list2.add(1); //加元素
  list2.add(2);
  list2.add(2);
  list2.add(5);
  list2.add(4);
  list2.add(3);
  list2.add(2);

  list2.remove(2); //移除第一个元素
  print(list2);

  list2.insert(0, 9); //指定位置插入元素
  print(list2);
  print(list2.length); //获取集合长度

  print(list2.indexOf(5)); //获取指定元素的位置
  print(list2.sublist(3)); //移除前面几个返回新的集合
  print(list2);
  print("---------列（数组）操作----------");

  print("---------字典(map)----------");
  Map game = {"firstName":"Ben","LastName":"son"}; //同时可以使用Map game = new Map();创建
  game["addName"] = "ppp"; //加键值
  print(game);

  game.remove("LastName"); //移除键对应元素，game.clear清空Map
  print("---------字典(map)----------");

  
}

