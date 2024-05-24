.class public final Lorg/checkerframework/com/google/common/escape/Escapers$Builder;
.super Ljava/lang/Object;
.source "Escapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/escape/Escapers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final replacementMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private safeMax:C

.field private safeMin:C

.field private unsafeReplacement:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/escape/Escapers$Builder;->replacementMap:Ljava/util/Map;

    .line 96
    const/4 v0, 0x0

    iput-char v0, p0, Lorg/checkerframework/com/google/common/escape/Escapers$Builder;->safeMin:C

    .line 97
    const v0, 0xffff

    iput-char v0, p0, Lorg/checkerframework/com/google/common/escape/Escapers$Builder;->safeMax:C

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/escape/Escapers$Builder;->unsafeReplacement:Ljava/lang/String;

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/escape/Escapers$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/escape/Escapers$1;

    .line 94
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/escape/Escapers$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/checkerframework/com/google/common/escape/Escapers$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/escape/Escapers$Builder;

    .line 94
    iget-object v0, p0, Lorg/checkerframework/com/google/common/escape/Escapers$Builder;->unsafeReplacement:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addEscape(CLjava/lang/String;)Lorg/checkerframework/com/google/common/escape/Escapers$Builder;
    .locals 2
    .param p1, "c"    # C
    .param p2, "replacement"    # Ljava/lang/String;

    .line 145
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lorg/checkerframework/com/google/common/escape/Escapers$Builder;->replacementMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-object p0
.end method

.method public build()Lorg/checkerframework/com/google/common/escape/Escaper;
    .locals 4

    .line 153
    new-instance v0, Lorg/checkerframework/com/google/common/escape/Escapers$Builder$1;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/escape/Escapers$Builder;->replacementMap:Ljava/util/Map;

    iget-char v2, p0, Lorg/checkerframework/com/google/common/escape/Escapers$Builder;->safeMin:C

    iget-char v3, p0, Lorg/checkerframework/com/google/common/escape/Escapers$Builder;->safeMax:C

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/checkerframework/com/google/common/escape/Escapers$Builder$1;-><init>(Lorg/checkerframework/com/google/common/escape/Escapers$Builder;Ljava/util/Map;CC)V

    return-object v0
.end method

.method public setSafeRange(CC)Lorg/checkerframework/com/google/common/escape/Escapers$Builder;
    .locals 0
    .param p1, "safeMin"    # C
    .param p2, "safeMax"    # C

    .line 114
    iput-char p1, p0, Lorg/checkerframework/com/google/common/escape/Escapers$Builder;->safeMin:C

    .line 115
    iput-char p2, p0, Lorg/checkerframework/com/google/common/escape/Escapers$Builder;->safeMax:C

    .line 116
    return-object p0
.end method

.method public setUnsafeReplacement(Ljava/lang/String;)Lorg/checkerframework/com/google/common/escape/Escapers$Builder;
    .locals 0
    .param p1, "unsafeReplacement"    # Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lorg/checkerframework/com/google/common/escape/Escapers$Builder;->unsafeReplacement:Ljava/lang/String;

    .line 130
    return-object p0
.end method
