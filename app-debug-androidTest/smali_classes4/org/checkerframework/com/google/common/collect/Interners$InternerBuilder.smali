.class public Lorg/checkerframework/com/google/common/collect/Interners$InternerBuilder;
.super Ljava/lang/Object;
.source "Interners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Interners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternerBuilder"
.end annotation


# instance fields
.field private final mapMaker:Lorg/checkerframework/com/google/common/collect/MapMaker;

.field private strong:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMaker;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/MapMaker;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Interners$InternerBuilder;->mapMaker:Lorg/checkerframework/com/google/common/collect/MapMaker;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/Interners$InternerBuilder;->strong:Z

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/collect/Interners$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/collect/Interners$1;

    .line 43
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/Interners$InternerBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/checkerframework/com/google/common/collect/Interner;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/Interner<",
            "TE;>;"
        }
    .end annotation

    .line 81
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/Interners$InternerBuilder;->strong:Z

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Interners$InternerBuilder;->mapMaker:Lorg/checkerframework/com/google/common/collect/MapMaker;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/MapMaker;->weakKeys()Lorg/checkerframework/com/google/common/collect/MapMaker;

    .line 84
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Interners$InternerImpl;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Interners$InternerBuilder;->mapMaker:Lorg/checkerframework/com/google/common/collect/MapMaker;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/Interners$InternerImpl;-><init>(Lorg/checkerframework/com/google/common/collect/MapMaker;Lorg/checkerframework/com/google/common/collect/Interners$1;)V

    return-object v0
.end method

.method public concurrencyLevel(I)Lorg/checkerframework/com/google/common/collect/Interners$InternerBuilder;
    .locals 1
    .param p1, "concurrencyLevel"    # I

    .line 76
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Interners$InternerBuilder;->mapMaker:Lorg/checkerframework/com/google/common/collect/MapMaker;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/MapMaker;->concurrencyLevel(I)Lorg/checkerframework/com/google/common/collect/MapMaker;

    .line 77
    return-object p0
.end method

.method public strong()Lorg/checkerframework/com/google/common/collect/Interners$InternerBuilder;
    .locals 1

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/Interners$InternerBuilder;->strong:Z

    .line 56
    return-object p0
.end method

.method public weak()Lorg/checkerframework/com/google/common/collect/Interners$InternerBuilder;
    .locals 1

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/Interners$InternerBuilder;->strong:Z

    .line 67
    return-object p0
.end method
