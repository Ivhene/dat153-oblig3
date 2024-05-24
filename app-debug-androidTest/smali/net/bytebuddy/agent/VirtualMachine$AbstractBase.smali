.class public abstract Lnet/bytebuddy/agent/VirtualMachine$AbstractBase;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Lnet/bytebuddy/agent/VirtualMachine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadAgent(Ljava/lang/String;)V
    .locals 1
    .param p1, "jarFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/agent/VirtualMachine$AbstractBase;->loadAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public loadAgentLibrary(Ljava/lang/String;)V
    .locals 1
    .param p1, "library"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/agent/VirtualMachine$AbstractBase;->loadAgentLibrary(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public loadAgentPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/agent/VirtualMachine$AbstractBase;->loadAgentPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method
