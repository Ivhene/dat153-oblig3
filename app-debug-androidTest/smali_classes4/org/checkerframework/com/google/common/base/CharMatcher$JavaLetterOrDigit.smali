.class final Lorg/checkerframework/com/google/common/base/CharMatcher$JavaLetterOrDigit;
.super Lorg/checkerframework/com/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JavaLetterOrDigit"
.end annotation


# static fields
.field static final INSTANCE:Lorg/checkerframework/com/google/common/base/CharMatcher$JavaLetterOrDigit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1393
    new-instance v0, Lorg/checkerframework/com/google/common/base/CharMatcher$JavaLetterOrDigit;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/base/CharMatcher$JavaLetterOrDigit;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/base/CharMatcher$JavaLetterOrDigit;->INSTANCE:Lorg/checkerframework/com/google/common/base/CharMatcher$JavaLetterOrDigit;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1391
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1391
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 1397
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    .line 1391
    invoke-super {p0}, Lorg/checkerframework/com/google/common/base/CharMatcher;->negate()Lorg/checkerframework/com/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1402
    const-string v0, "CharMatcher.javaLetterOrDigit()"

    return-object v0
.end method