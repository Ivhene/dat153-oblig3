.class public interface abstract Lorg/checkerframework/common/reflection/ReflectionResolver;
.super Ljava/lang/Object;
.source "ReflectionResolver.java"


# static fields
.field public static final INIT:Ljava/lang/String; = "<init>"


# virtual methods
.method public abstract isReflectiveMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;)Z
.end method

.method public abstract resolveReflectiveCall(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
.end method
