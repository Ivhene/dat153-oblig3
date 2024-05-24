.class public final enum Lnet/bytebuddy/pool/TypePool$Empty;
.super Ljava/lang/Enum;
.source "TypePool.java"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Empty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/pool/TypePool$Empty;",
        ">;",
        "Lnet/bytebuddy/pool/TypePool;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/pool/TypePool$Empty;

.field public static final enum INSTANCE:Lnet/bytebuddy/pool/TypePool$Empty;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 429
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Empty;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/pool/TypePool$Empty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/pool/TypePool$Empty;->INSTANCE:Lnet/bytebuddy/pool/TypePool$Empty;

    .line 424
    filled-new-array {v0}, [Lnet/bytebuddy/pool/TypePool$Empty;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/pool/TypePool$Empty;->$VALUES:[Lnet/bytebuddy/pool/TypePool$Empty;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 424
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Empty;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 424
    const-class v0, Lnet/bytebuddy/pool/TypePool$Empty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/pool/TypePool$Empty;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/pool/TypePool$Empty;
    .locals 1

    .line 424
    sget-object v0, Lnet/bytebuddy/pool/TypePool$Empty;->$VALUES:[Lnet/bytebuddy/pool/TypePool$Empty;

    invoke-virtual {v0}, [Lnet/bytebuddy/pool/TypePool$Empty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/pool/TypePool$Empty;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 443
    return-void
.end method

.method public describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 435
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Resolution$Illegal;

    invoke-direct {v0, p1}, Lnet/bytebuddy/pool/TypePool$Resolution$Illegal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
