.class public Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;
.super Ljava/lang/Object;
.source "ByteBuddyAgent.java"

# interfaces
.implements Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForExistingAgent"
.end annotation


# instance fields
.field private agent:Ljava/io/File;


# direct methods
.method protected constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "agent"    # Ljava/io/File;

    .line 1523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1524
    iput-object p1, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;->agent:Ljava/io/File;

    .line 1525
    return-void
.end method


# virtual methods
.method public resolve()Ljava/io/File;
    .locals 1

    .line 1531
    iget-object v0, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;->agent:Ljava/io/File;

    return-object v0
.end method
