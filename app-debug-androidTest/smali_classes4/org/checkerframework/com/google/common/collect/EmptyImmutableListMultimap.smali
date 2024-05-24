.class Lorg/checkerframework/com/google/common/collect/EmptyImmutableListMultimap;
.super Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;
.source "EmptyImmutableListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lorg/checkerframework/com/google/common/collect/EmptyImmutableListMultimap;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lorg/checkerframework/com/google/common/collect/EmptyImmutableListMultimap;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/EmptyImmutableListMultimap;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/collect/EmptyImmutableListMultimap;->INSTANCE:Lorg/checkerframework/com/google/common/collect/EmptyImmutableListMultimap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 31
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;I)V

    .line 32
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 35
    sget-object v0, Lorg/checkerframework/com/google/common/collect/EmptyImmutableListMultimap;->INSTANCE:Lorg/checkerframework/com/google/common/collect/EmptyImmutableListMultimap;

    return-object v0
.end method
