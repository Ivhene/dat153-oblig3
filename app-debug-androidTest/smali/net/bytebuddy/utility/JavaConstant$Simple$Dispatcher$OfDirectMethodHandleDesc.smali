.class public interface abstract Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDirectMethodHandleDesc;
.super Ljava/lang/Object;
.source "JavaConstant.java"

# interfaces
.implements Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfDirectMethodHandleDesc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDirectMethodHandleDesc$ForKind;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    value = "java.lang.constant.DirectMethodHandleDesc"
.end annotation


# virtual methods
.method public abstract lookupDescriptor(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract methodName(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract owner(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract refKind(Ljava/lang/Object;)I
.end method
