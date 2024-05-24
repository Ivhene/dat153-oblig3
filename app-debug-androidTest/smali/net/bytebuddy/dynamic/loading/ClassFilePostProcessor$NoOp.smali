.class public final enum Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;
.super Ljava/lang/Enum;
.source "ClassFilePostProcessor.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;",
        ">;",
        "Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;

    .line 43
    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 43
    const-class v0, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;
    .locals 1

    .line 43
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;

    return-object v0
.end method


# virtual methods
.method public transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/security/ProtectionDomain;[B)[B
    .locals 0
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .param p4, "binaryRepresentation"    # [B

    .line 54
    return-object p4
.end method
