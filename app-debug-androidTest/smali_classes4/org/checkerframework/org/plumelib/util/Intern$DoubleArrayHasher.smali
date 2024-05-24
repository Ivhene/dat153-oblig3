.class final Lorg/checkerframework/org/plumelib/util/Intern$DoubleArrayHasher;
.super Ljava/lang/Object;
.source "Intern.java"

# interfaces
.implements Lorg/checkerframework/org/plumelib/util/Hasher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/Intern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DoubleArrayHasher"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/plumelib/util/Intern$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/plumelib/util/Intern$1;

    .line 215
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/Intern$DoubleArrayHasher;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "a1"    # Ljava/lang/Object;
    .param p2, "a2"    # Ljava/lang/Object;

    .line 221
    move-object v0, p1

    check-cast v0, [D

    check-cast v0, [D

    .line 222
    .local v0, "da1":[D
    move-object v1, p2

    check-cast v1, [D

    check-cast v1, [D

    .line 223
    .local v1, "da2":[D
    array-length v2, v0

    array-length v3, v1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 224
    return v4

    .line 226
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 227
    aget-wide v5, v0, v2

    aget-wide v7, v1, v2

    cmpl-double v3, v5, v7

    if-eqz v3, :cond_2

    aget-wide v5, v0, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-wide v5, v1, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_2

    .line 228
    :cond_1
    return v4

    .line 226
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 236
    move-object v0, p1

    check-cast v0, [D

    check-cast v0, [D

    .line 239
    .local v0, "a":[D
    const-wide/16 v1, 0x0

    .line 240
    .local v1, "running":D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 241
    aget-wide v4, v0, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_1

    :cond_0
    aget-wide v4, v0, v3

    .line 242
    .local v4, "elt":D
    :goto_1
    const-wide/high16 v6, 0x4037000000000000L    # 23.0

    mul-double/2addr v6, v1

    const-wide v8, 0x4070700000000000L    # 263.0

    mul-double/2addr v8, v4

    add-double v1, v6, v8

    .line 240
    .end local v4    # "elt":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 245
    .end local v3    # "i":I
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    .line 246
    .local v3, "result":J
    const-wide/32 v5, 0x7fffffff

    rem-long v5, v3, v5

    long-to-int v5, v5

    return v5
.end method
