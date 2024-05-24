.class final enum Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;
.super Ljava/lang/Enum;
.source "CacheBuilder.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/cache/Weigher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/CacheBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "OneWeigher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;",
        ">;",
        "Lorg/checkerframework/com/google/common/cache/Weigher<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;

.field public static final enum INSTANCE:Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 210
    new-instance v0, Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;

    .line 209
    filled-new-array {v0}, [Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;->$VALUES:[Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 209
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 209
    const-class v0, Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;
    .locals 1

    .line 209
    sget-object v0, Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;->$VALUES:[Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;

    invoke-virtual {v0}, [Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/google/common/cache/CacheBuilder$OneWeigher;

    return-object v0
.end method


# virtual methods
.method public weigh(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 214
    const/4 v0, 0x1

    return v0
.end method
