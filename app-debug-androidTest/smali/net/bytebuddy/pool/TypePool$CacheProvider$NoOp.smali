.class public final enum Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;
.super Ljava/lang/Enum;
.source "TypePool.java"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$CacheProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$CacheProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;",
        ">;",
        "Lnet/bytebuddy/pool/TypePool$CacheProvider;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 208
    new-instance v0, Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;->INSTANCE:Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;

    .line 203
    filled-new-array {v0}, [Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;->$VALUES:[Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 203
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 203
    const-class v0, Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;
    .locals 1

    .line 203
    sget-object v0, Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;->$VALUES:[Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 229
    return-void
.end method

.method public find(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 214
    sget-object v0, Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;->UNRESOLVED:Lnet/bytebuddy/pool/TypePool$Resolution;

    return-object v0
.end method

.method public register(Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Resolution;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resolution"    # Lnet/bytebuddy/pool/TypePool$Resolution;

    .line 221
    return-object p2
.end method
