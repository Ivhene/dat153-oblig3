.class public final Lorg/checkerframework/checker/nullness/NullnessUtil;
.super Ljava/lang/Object;
.source "NullnessUtil.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 25
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "shouldn\'t be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static castNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .line 71
    .local p0, "ref":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 72
    return-object p0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Misuse of castNonNull: called with a null argument"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static castNonNullArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 139
    .local p0, "arr":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_2

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 141
    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 142
    aget-object v1, p0, v0

    invoke-static {v1}, Lorg/checkerframework/checker/nullness/NullnessUtil;->checkIfArray(Ljava/lang/Object;)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Misuse of castNonNull: called with a null array element"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 144
    .end local v0    # "i":I
    :cond_1
    return-object p0

    .line 139
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Misuse of castNonNullArray: called with a null array argument"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static castNonNullDeep([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .line 84
    .local p0, "arr":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/checkerframework/checker/nullness/NullnessUtil;->castNonNullArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static castNonNullDeep([[Ljava/lang/Object;)[[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)[[TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .line 96
    .local p0, "arr":[[Ljava/lang/Object;, "[[TT;"
    invoke-static {p0}, Lorg/checkerframework/checker/nullness/NullnessUtil;->castNonNullArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    return-object v0
.end method

.method public static castNonNullDeep([[[Ljava/lang/Object;)[[[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[[TT;)[[[TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .line 108
    .local p0, "arr":[[[Ljava/lang/Object;, "[[[TT;"
    invoke-static {p0}, Lorg/checkerframework/checker/nullness/NullnessUtil;->castNonNullArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[Ljava/lang/Object;

    return-object v0
.end method

.method public static castNonNullDeep([[[[Ljava/lang/Object;)[[[[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[[[TT;)[[[[TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .line 121
    .local p0, "arr":[[[[Ljava/lang/Object;, "[[[[TT;"
    invoke-static {p0}, Lorg/checkerframework/checker/nullness/NullnessUtil;->castNonNullArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[[Ljava/lang/Object;

    return-object v0
.end method

.method public static castNonNullDeep([[[[[Ljava/lang/Object;)[[[[[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[[[[TT;)[[[[[TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .line 134
    .local p0, "arr":[[[[[Ljava/lang/Object;, "[[[[[TT;"
    invoke-static {p0}, Lorg/checkerframework/checker/nullness/NullnessUtil;->castNonNullArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[[[Ljava/lang/Object;

    return-object v0
.end method

.method private static checkIfArray(Ljava/lang/Object;)V
    .locals 2
    .param p0, "ref"    # Ljava/lang/Object;

    .line 148
    if-eqz p0, :cond_2

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 150
    .local v0, "comp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/checkerframework/checker/nullness/NullnessUtil;->castNonNullArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 159
    :cond_1
    :goto_0
    return-void

    .line 148
    .end local v0    # "comp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Misuse of checkIfArray: called with a null argument"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
