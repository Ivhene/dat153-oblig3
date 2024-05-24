.class public Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;
.super Lcom/sun/jna/Structure;
.source "VirtualMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecurityAttributes"
.end annotation


# instance fields
.field public inherit:Z

.field public length:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public securityDescriptor:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2547
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFieldOrder()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2567
    const-string v0, "securityDescriptor"

    const-string v1, "inherit"

    const-string v2, "length"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
