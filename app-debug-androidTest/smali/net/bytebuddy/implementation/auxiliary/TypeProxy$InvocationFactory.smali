.class public interface abstract Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;
.super Ljava/lang/Object;
.source "TypeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/auxiliary/TypeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InvocationFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;
    }
.end annotation


# virtual methods
.method public abstract invoke(Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
.end method
