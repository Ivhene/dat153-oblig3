.class public final enum Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJ9Vm;
.super Ljava/lang/Enum;
.source "ByteBuddyAgent.java"

# interfaces
.implements Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForJ9Vm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJ9Vm;",
        ">;",
        "Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJ9Vm;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJ9Vm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1070
    new-instance v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJ9Vm;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJ9Vm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJ9Vm;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJ9Vm;

    .line 1065
    filled-new-array {v0}, [Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJ9Vm;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJ9Vm;->$VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJ9Vm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1065
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJ9Vm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1065
    const-class v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJ9Vm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJ9Vm;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJ9Vm;
    .locals 1

    .line 1065
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJ9Vm;->$VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJ9Vm;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJ9Vm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJ9Vm;

    return-object v0
.end method


# virtual methods
.method public attempt()Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;
    .locals 1

    .line 1076
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Simple;->ofJ9()Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;

    move-result-object v0

    return-object v0
.end method
