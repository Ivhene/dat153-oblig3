.class public interface abstract Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Parameter;
.super Ljava/lang/Object;
.source "ParameterDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Parameter"
.end annotation

.annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    value = "java.lang.reflect.Parameter"
.end annotation


# virtual methods
.method public abstract getModifiers(Ljava/lang/Object;)I
.end method

.method public abstract getName(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract isNamePresent(Ljava/lang/Object;)Z
.end method
