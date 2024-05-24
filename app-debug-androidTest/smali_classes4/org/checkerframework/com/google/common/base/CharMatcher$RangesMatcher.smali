.class Lorg/checkerframework/com/google/common/base/CharMatcher$RangesMatcher;
.super Lorg/checkerframework/com/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RangesMatcher"
.end annotation


# instance fields
.field private final description:Ljava/lang/String;

.field private final rangeEnds:[C

.field private final rangeStarts:[C


# direct methods
.method constructor <init>(Ljava/lang/String;[C[C)V
    .locals 5
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "rangeStarts"    # [C
    .param p3, "rangeEnds"    # [C

    .line 1296
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/base/CharMatcher;-><init>()V

    .line 1297
    iput-object p1, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$RangesMatcher;->description:Ljava/lang/String;

    .line 1298
    iput-object p2, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$RangesMatcher;->rangeStarts:[C

    .line 1299
    iput-object p3, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$RangesMatcher;->rangeEnds:[C

    .line 1300
    array-length v0, p2

    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_4

    .line 1302
    aget-char v1, p2, v0

    aget-char v4, p3, v0

    if-gt v1, v4, :cond_1

    move v1, v3

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    invoke-static {v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1303
    add-int/lit8 v1, v0, 0x1

    array-length v4, p2

    if-ge v1, v4, :cond_3

    .line 1304
    aget-char v1, p3, v0

    add-int/lit8 v4, v0, 0x1

    aget-char v4, p2, v4

    if-ge v1, v4, :cond_2

    move v1, v3

    goto :goto_3

    :cond_2
    move v1, v2

    :goto_3
    invoke-static {v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1301
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1307
    .end local v0    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1290
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public matches(C)Z
    .locals 3
    .param p1, "c"    # C

    .line 1311
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$RangesMatcher;->rangeStarts:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    .line 1312
    .local v0, "index":I
    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 1313
    return v1

    .line 1315
    :cond_0
    not-int v2, v0

    sub-int/2addr v2, v1

    .line 1316
    .end local v0    # "index":I
    .local v2, "index":I
    if-ltz v2, :cond_1

    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$RangesMatcher;->rangeEnds:[C

    aget-char v0, v0, v2

    if-gt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    .line 1290
    invoke-super {p0}, Lorg/checkerframework/com/google/common/base/CharMatcher;->negate()Lorg/checkerframework/com/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1322
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$RangesMatcher;->description:Ljava/lang/String;

    return-object v0
.end method