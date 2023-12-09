{\rtf1\ansi\ansicpg1252\cocoartf2757
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c100000\c100000\c100000;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\fs40 \cf2 \cb3 \CocoaLigature0 provider "aws"\{\
region="us-east-2"\
\}\
resource "aws_instance" "myec2" \{\
   ami = "ami-06d4b7182ac3480fa"\
   instance_type = "t2.micro"\
\}\
resource "aws_eip" "example" \{\
  domain   = "vpc"\
  instance = aws_instance.myec2.id\
\
  tags = \{\
    Name = "ExampleEip"\
  \}\
\}}