.class public interface abstract Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$DefaultMethodLocator;
.super Ljava/lang/Object;
.source "Morph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "DefaultMethodLocator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$DefaultMethodLocator$Explicit;,
        Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$DefaultMethodLocator$Implicit;
    }
.end annotation


# virtual methods
.method public abstract resolve(Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
.end method
