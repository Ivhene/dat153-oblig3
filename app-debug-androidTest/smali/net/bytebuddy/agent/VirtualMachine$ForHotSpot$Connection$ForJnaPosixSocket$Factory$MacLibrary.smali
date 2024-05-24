.class public interface abstract Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$Factory$MacLibrary;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Lcom/sun/jna/Library;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MacLibrary"
.end annotation


# static fields
.field public static final CS_DARWIN_USER_TEMP_DIR:I = 0x10001


# virtual methods
.method public abstract confstr(ILcom/sun/jna/Pointer;J)J
.end method
