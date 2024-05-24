.class public Lorg/checkerframework/org/apache/bcel/util/SyntheticRepository;
.super Lorg/checkerframework/org/apache/bcel/util/MemorySensitiveClassPathRepository;
.source "SyntheticRepository.java"


# static fields
.field private static final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/org/apache/bcel/util/ClassPath;",
            "Lorg/checkerframework/org/apache/bcel/util/SyntheticRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/util/SyntheticRepository;->instances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lorg/checkerframework/org/apache/bcel/util/ClassPath;)V
    .locals 0
    .param p1, "path"    # Lorg/checkerframework/org/apache/bcel/util/ClassPath;

    .line 39
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/util/MemorySensitiveClassPathRepository;-><init>(Lorg/checkerframework/org/apache/bcel/util/ClassPath;)V

    .line 40
    return-void
.end method

.method public static getInstance()Lorg/checkerframework/org/apache/bcel/util/SyntheticRepository;
    .locals 1

    .line 43
    sget-object v0, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->SYSTEM_CLASS_PATH:Lorg/checkerframework/org/apache/bcel/util/ClassPath;

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/util/SyntheticRepository;->getInstance(Lorg/checkerframework/org/apache/bcel/util/ClassPath;)Lorg/checkerframework/org/apache/bcel/util/SyntheticRepository;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/checkerframework/org/apache/bcel/util/ClassPath;)Lorg/checkerframework/org/apache/bcel/util/SyntheticRepository;
    .locals 3
    .param p0, "classPath"    # Lorg/checkerframework/org/apache/bcel/util/ClassPath;

    .line 47
    sget-object v0, Lorg/checkerframework/org/apache/bcel/util/SyntheticRepository;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/util/SyntheticRepository;

    .line 48
    .local v1, "rep":Lorg/checkerframework/org/apache/bcel/util/SyntheticRepository;
    if-nez v1, :cond_0

    .line 49
    new-instance v2, Lorg/checkerframework/org/apache/bcel/util/SyntheticRepository;

    invoke-direct {v2, p0}, Lorg/checkerframework/org/apache/bcel/util/SyntheticRepository;-><init>(Lorg/checkerframework/org/apache/bcel/util/ClassPath;)V

    move-object v1, v2

    .line 50
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    return-object v1
.end method
