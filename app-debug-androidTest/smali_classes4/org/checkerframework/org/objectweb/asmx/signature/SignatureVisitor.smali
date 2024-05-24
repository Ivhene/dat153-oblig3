.class public interface abstract Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
.super Ljava/lang/Object;
.source "SignatureVisitor.java"


# static fields
.field public static final EXTENDS:C = '+'

.field public static final INSTANCEOF:C = '='

.field public static final SUPER:C = '-'


# virtual methods
.method public abstract visitArrayType()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
.end method

.method public abstract visitBaseType(C)V
.end method

.method public abstract visitClassBound()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
.end method

.method public abstract visitClassType(Ljava/lang/String;)V
.end method

.method public abstract visitEnd()V
.end method

.method public abstract visitExceptionType()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
.end method

.method public abstract visitFormalTypeParameter(Ljava/lang/String;)V
.end method

.method public abstract visitInnerClassType(Ljava/lang/String;)V
.end method

.method public abstract visitInterface()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
.end method

.method public abstract visitInterfaceBound()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
.end method

.method public abstract visitParameterType()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
.end method

.method public abstract visitReturnType()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
.end method

.method public abstract visitSuperclass()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
.end method

.method public abstract visitTypeArgument(C)Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
.end method

.method public abstract visitTypeArgument()V
.end method

.method public abstract visitTypeVariable(Ljava/lang/String;)V
.end method
