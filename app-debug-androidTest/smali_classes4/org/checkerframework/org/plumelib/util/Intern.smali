.class public final Lorg/checkerframework/org/plumelib/util/Intern;
.super Ljava/lang/Object;
.source "Intern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/plumelib/util/Intern$SubsequenceHasher;,
        Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;,
        Lorg/checkerframework/org/plumelib/util/Intern$ObjectArrayHasher;,
        Lorg/checkerframework/org/plumelib/util/Intern$StringArrayHasher;,
        Lorg/checkerframework/org/plumelib/util/Intern$DoubleArrayHasher;,
        Lorg/checkerframework/org/plumelib/util/Intern$DoubleHasher;,
        Lorg/checkerframework/org/plumelib/util/Intern$LongArrayHasher;,
        Lorg/checkerframework/org/plumelib/util/Intern$IntArrayHasher;,
        Lorg/checkerframework/org/plumelib/util/Intern$LongHasher;,
        Lorg/checkerframework/org/plumelib/util/Intern$IntegerHasher;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DOUBLE_FACTOR:D = 263.0

.field private static final FACTOR:I = 0x17

.field private static assertsEnabled:Z

.field private static internedDoubleArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<",
            "[D",
            "Ljava/lang/ref/WeakReference<",
            "[D>;>;"
        }
    .end annotation
.end field

.field private static internedDoubleNaN:Ljava/lang/Double;

.field private static internedDoubleSubsequence:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<",
            "Lorg/checkerframework/org/plumelib/util/Intern$Subsequence<",
            "[D>;",
            "Ljava/lang/ref/WeakReference<",
            "[D>;>;"
        }
    .end annotation
.end field

.field private static internedDoubleZero:Ljava/lang/Double;

.field private static internedDoubles:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<",
            "Ljava/lang/Double;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field private static internedIntArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<",
            "[I",
            "Ljava/lang/ref/WeakReference<",
            "[I>;>;"
        }
    .end annotation
.end field

.field private static internedIntSubsequence:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<",
            "Lorg/checkerframework/org/plumelib/util/Intern$Subsequence<",
            "[I>;",
            "Ljava/lang/ref/WeakReference<",
            "[I>;>;"
        }
    .end annotation
.end field

.field private static internedIntegers:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static internedLongArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<",
            "[J",
            "Ljava/lang/ref/WeakReference<",
            "[J>;>;"
        }
    .end annotation
.end field

.field private static internedLongSubsequence:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<",
            "Lorg/checkerframework/org/plumelib/util/Intern$Subsequence<",
            "[J>;",
            "Ljava/lang/ref/WeakReference<",
            "[J>;>;"
        }
    .end annotation
.end field

.field private static internedLongs:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private static internedObjectArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/WeakReference<",
            "[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static internedObjectSubsequence:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<",
            "Lorg/checkerframework/org/plumelib/util/Intern$Subsequence<",
            "[",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static internedStringArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static internedStringSubsequence:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<",
            "Lorg/checkerframework/org/plumelib/util/Intern$Subsequence<",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    nop

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lorg/checkerframework/org/plumelib/util/Intern;->assertsEnabled:Z

    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lorg/checkerframework/org/plumelib/util/Intern;->assertsEnabled:Z

    .line 342
    new-instance v0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v1, Lorg/checkerframework/org/plumelib/util/Intern$IntegerHasher;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/checkerframework/org/plumelib/util/Intern$IntegerHasher;-><init>(Lorg/checkerframework/org/plumelib/util/Intern$1;)V

    invoke-direct {v0, v1}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;-><init>(Lorg/checkerframework/org/plumelib/util/Hasher;)V

    sput-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedIntegers:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    .line 343
    new-instance v0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v1, Lorg/checkerframework/org/plumelib/util/Intern$LongHasher;

    invoke-direct {v1, v2}, Lorg/checkerframework/org/plumelib/util/Intern$LongHasher;-><init>(Lorg/checkerframework/org/plumelib/util/Intern$1;)V

    invoke-direct {v0, v1}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;-><init>(Lorg/checkerframework/org/plumelib/util/Hasher;)V

    sput-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedLongs:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    .line 344
    new-instance v0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v1, Lorg/checkerframework/org/plumelib/util/Intern$IntArrayHasher;

    invoke-direct {v1, v2}, Lorg/checkerframework/org/plumelib/util/Intern$IntArrayHasher;-><init>(Lorg/checkerframework/org/plumelib/util/Intern$1;)V

    invoke-direct {v0, v1}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;-><init>(Lorg/checkerframework/org/plumelib/util/Hasher;)V

    sput-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedIntArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    .line 345
    new-instance v0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v1, Lorg/checkerframework/org/plumelib/util/Intern$LongArrayHasher;

    invoke-direct {v1, v2}, Lorg/checkerframework/org/plumelib/util/Intern$LongArrayHasher;-><init>(Lorg/checkerframework/org/plumelib/util/Intern$1;)V

    invoke-direct {v0, v1}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;-><init>(Lorg/checkerframework/org/plumelib/util/Hasher;)V

    sput-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedLongArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    .line 346
    new-instance v0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v1, Lorg/checkerframework/org/plumelib/util/Intern$DoubleHasher;

    invoke-direct {v1, v2}, Lorg/checkerframework/org/plumelib/util/Intern$DoubleHasher;-><init>(Lorg/checkerframework/org/plumelib/util/Intern$1;)V

    invoke-direct {v0, v1}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;-><init>(Lorg/checkerframework/org/plumelib/util/Hasher;)V

    sput-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedDoubles:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    .line 347
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedDoubleNaN:Ljava/lang/Double;

    .line 348
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedDoubleZero:Ljava/lang/Double;

    .line 349
    new-instance v0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v1, Lorg/checkerframework/org/plumelib/util/Intern$DoubleArrayHasher;

    invoke-direct {v1, v2}, Lorg/checkerframework/org/plumelib/util/Intern$DoubleArrayHasher;-><init>(Lorg/checkerframework/org/plumelib/util/Intern$1;)V

    invoke-direct {v0, v1}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;-><init>(Lorg/checkerframework/org/plumelib/util/Hasher;)V

    sput-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedDoubleArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    .line 350
    new-instance v0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v1, Lorg/checkerframework/org/plumelib/util/Intern$StringArrayHasher;

    invoke-direct {v1, v2}, Lorg/checkerframework/org/plumelib/util/Intern$StringArrayHasher;-><init>(Lorg/checkerframework/org/plumelib/util/Intern$1;)V

    invoke-direct {v0, v1}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;-><init>(Lorg/checkerframework/org/plumelib/util/Hasher;)V

    sput-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedStringArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    .line 351
    new-instance v0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v1, Lorg/checkerframework/org/plumelib/util/Intern$ObjectArrayHasher;

    invoke-direct {v1, v2}, Lorg/checkerframework/org/plumelib/util/Intern$ObjectArrayHasher;-><init>(Lorg/checkerframework/org/plumelib/util/Intern$1;)V

    invoke-direct {v0, v1}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;-><init>(Lorg/checkerframework/org/plumelib/util/Hasher;)V

    sput-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedObjectArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    .line 355
    new-instance v0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v1, Lorg/checkerframework/org/plumelib/util/Intern$SubsequenceHasher;

    invoke-direct {v1, v2}, Lorg/checkerframework/org/plumelib/util/Intern$SubsequenceHasher;-><init>(Lorg/checkerframework/org/plumelib/util/Intern$1;)V

    invoke-direct {v0, v1}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;-><init>(Lorg/checkerframework/org/plumelib/util/Hasher;)V

    sput-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedIntSubsequence:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    .line 356
    new-instance v0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v1, Lorg/checkerframework/org/plumelib/util/Intern$SubsequenceHasher;

    invoke-direct {v1, v2}, Lorg/checkerframework/org/plumelib/util/Intern$SubsequenceHasher;-><init>(Lorg/checkerframework/org/plumelib/util/Intern$1;)V

    invoke-direct {v0, v1}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;-><init>(Lorg/checkerframework/org/plumelib/util/Hasher;)V

    sput-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedLongSubsequence:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    .line 357
    new-instance v0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v1, Lorg/checkerframework/org/plumelib/util/Intern$SubsequenceHasher;

    invoke-direct {v1, v2}, Lorg/checkerframework/org/plumelib/util/Intern$SubsequenceHasher;-><init>(Lorg/checkerframework/org/plumelib/util/Intern$1;)V

    invoke-direct {v0, v1}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;-><init>(Lorg/checkerframework/org/plumelib/util/Hasher;)V

    sput-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedDoubleSubsequence:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    .line 358
    new-instance v0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v1, Lorg/checkerframework/org/plumelib/util/Intern$SubsequenceHasher;

    invoke-direct {v1, v2}, Lorg/checkerframework/org/plumelib/util/Intern$SubsequenceHasher;-><init>(Lorg/checkerframework/org/plumelib/util/Intern$1;)V

    invoke-direct {v0, v1}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;-><init>(Lorg/checkerframework/org/plumelib/util/Hasher;)V

    sput-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedObjectSubsequence:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    .line 360
    new-instance v0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v1, Lorg/checkerframework/org/plumelib/util/Intern$SubsequenceHasher;

    invoke-direct {v1, v2}, Lorg/checkerframework/org/plumelib/util/Intern$SubsequenceHasher;-><init>(Lorg/checkerframework/org/plumelib/util/Intern$1;)V

    invoke-direct {v0, v1}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;-><init>(Lorg/checkerframework/org/plumelib/util/Hasher;)V

    sput-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedStringSubsequence:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    .line 362
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Error;

    const-string v1, "do not instantiate"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .line 29
    sget-boolean v0, Lorg/checkerframework/org/plumelib/util/Intern;->assertsEnabled:Z

    return v0
.end method

.method protected static doubleArrays()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[D>;"
        }
    .end annotation

    .line 489
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedDoubleArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected static doubles()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 480
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedDoubles:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected static intArrays()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[I>;"
        }
    .end annotation

    .line 462
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedIntArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected static integers()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 444
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedIntegers:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static intern(D)D
    .locals 0
    .param p0, "d"    # D
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 547
    return-wide p0
.end method

.method public static intern(J)J
    .locals 0
    .param p0, "l"    # J
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 536
    return-wide p0
.end method

.method public static intern(Ljava/lang/Double;)Ljava/lang/Double;
    .locals 5
    .param p0, "a"    # Ljava/lang/Double;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 718
    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedDoubleNaN:Ljava/lang/Double;

    return-object v0

    .line 722
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 723
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedDoubleZero:Ljava/lang/Double;

    return-object v0

    .line 725
    :cond_1
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedDoubles:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 726
    .local v0, "lookup":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Double;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 727
    .local v1, "result1":Ljava/lang/Double;
    :goto_0
    if-eqz v1, :cond_3

    .line 728
    return-object v1

    .line 730
    :cond_3
    move-object v2, p0

    .line 731
    .local v2, "result":Ljava/lang/Double;
    sget-object v3, Lorg/checkerframework/org/plumelib/util/Intern;->internedDoubles:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    return-object v2
.end method

.method public static intern(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 5
    .param p0, "a"    # Ljava/lang/Integer;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 562
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedIntegers:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 563
    .local v0, "lookup":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 564
    .local v1, "result1":Ljava/lang/Integer;
    :goto_0
    if-eqz v1, :cond_1

    .line 565
    return-object v1

    .line 567
    :cond_1
    move-object v2, p0

    .line 568
    .local v2, "result":Ljava/lang/Integer;
    sget-object v3, Lorg/checkerframework/org/plumelib/util/Intern;->internedIntegers:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    return-object v2
.end method

.method public static intern(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 5
    .param p0, "a"    # Ljava/lang/Long;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 607
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedLongs:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 608
    .local v0, "lookup":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 609
    .local v1, "result1":Ljava/lang/Long;
    :goto_0
    if-eqz v1, :cond_1

    .line 610
    return-object v1

    .line 612
    :cond_1
    move-object v2, p0

    .line 613
    .local v2, "result":Ljava/lang/Long;
    sget-object v3, Lorg/checkerframework/org/plumelib/util/Intern;->internedLongs:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    return-object v2
.end method

.method public static intern(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "a"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 880
    if-nez p0, :cond_0

    .line 881
    const/4 v0, 0x0

    return-object v0

    .line 882
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 883
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/Intern;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 884
    :cond_1
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 885
    move-object v0, p0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 886
    .local v0, "asArray":[Ljava/lang/String;
    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/Intern;->intern([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 887
    .end local v0    # "asArray":[Ljava/lang/String;
    :cond_2
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 888
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/Intern;->intern(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 889
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 890
    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/Intern;->intern(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 891
    :cond_4
    instance-of v0, p0, [I

    if-eqz v0, :cond_5

    .line 892
    move-object v0, p0

    check-cast v0, [I

    check-cast v0, [I

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/Intern;->intern([I)[I

    move-result-object v0

    return-object v0

    .line 893
    :cond_5
    instance-of v0, p0, [J

    if-eqz v0, :cond_6

    .line 894
    move-object v0, p0

    check-cast v0, [J

    check-cast v0, [J

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/Intern;->intern([J)[J

    move-result-object v0

    return-object v0

    .line 895
    :cond_6
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 896
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/Intern;->intern(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 897
    :cond_7
    instance-of v0, p0, [D

    if-eqz v0, :cond_8

    .line 898
    move-object v0, p0

    check-cast v0, [D

    check-cast v0, [D

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/Intern;->intern([D)[D

    move-result-object v0

    return-object v0

    .line 899
    :cond_8
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 900
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 901
    .local v0, "asArray":[Ljava/lang/Object;
    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/Intern;->intern([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 903
    .end local v0    # "asArray":[Ljava/lang/Object;
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Arguments of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 904
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be interned"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static intern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 522
    if-nez p0, :cond_0

    .line 523
    const/4 v0, 0x0

    return-object v0

    .line 525
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static intern([D)[D
    .locals 5
    .param p0, "a"    # [D
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 773
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedDoubleArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 780
    .local v0, "lookup":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[D>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 781
    .local v1, "result1":[D
    :goto_0
    if-eqz v1, :cond_1

    .line 782
    return-object v1

    .line 784
    :cond_1
    move-object v2, p0

    check-cast v2, [D

    .line 785
    .local v2, "result":[D
    sget-object v3, Lorg/checkerframework/org/plumelib/util/Intern;->internedDoubleArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    return-object v2
.end method

.method public static intern([I)[I
    .locals 5
    .param p0, "a"    # [I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 659
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedIntArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 666
    .local v0, "lookup":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[I>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 667
    .local v1, "result1":[I
    :goto_0
    if-eqz v1, :cond_1

    .line 668
    return-object v1

    .line 670
    :cond_1
    move-object v2, p0

    check-cast v2, [I

    .line 671
    .local v2, "result":[I
    sget-object v3, Lorg/checkerframework/org/plumelib/util/Intern;->internedIntArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    return-object v2
.end method

.method public static intern([J)[J
    .locals 5
    .param p0, "a"    # [J
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 688
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedLongArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 695
    .local v0, "lookup":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[J>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 696
    .local v1, "result1":[J
    :goto_0
    if-eqz v1, :cond_1

    .line 697
    return-object v1

    .line 699
    :cond_1
    move-object v2, p0

    check-cast v2, [J

    .line 700
    .local v2, "result":[J
    sget-object v3, Lorg/checkerframework/org/plumelib/util/Intern;->internedLongArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    return-object v2
.end method

.method public static intern([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p0, "a"    # [Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 851
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedObjectArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 852
    .local v0, "lookup":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 853
    .local v1, "result":[Ljava/lang/Object;
    :goto_0
    if-nez v1, :cond_1

    .line 854
    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    .line 855
    sget-object v2, Lorg/checkerframework/org/plumelib/util/Intern;->internedObjectArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v3}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    :cond_1
    move-object v2, v1

    .line 866
    .local v2, "polyresult":[Ljava/lang/Object;
    return-object v2
.end method

.method public static intern([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "a"    # [Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 808
    sget-boolean v0, Lorg/checkerframework/org/plumelib/util/Intern;->assertsEnabled:Z

    if-eqz v0, :cond_1

    .line 809
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 810
    aget-object v1, p0, v0

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/checkerframework/org/plumelib/util/Intern;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 809
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 811
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 816
    .end local v0    # "k":I
    :cond_1
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedStringArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 817
    .local v0, "lookup":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 818
    .local v1, "result":[Ljava/lang/String;
    :goto_1
    if-nez v1, :cond_3

    .line 819
    move-object v1, p0

    check-cast v1, [Ljava/lang/String;

    .line 820
    sget-object v2, Lorg/checkerframework/org/plumelib/util/Intern;->internedStringArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v3}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    :cond_3
    move-object v2, v1

    .line 831
    .local v2, "polyresult":[Ljava/lang/String;
    return-object v2
.end method

.method public static internStrings([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "a"    # [Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 60
    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 61
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    .line 59
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public static internSubsequence([DII)[D
    .locals 7
    .param p0, "seq"    # [D
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 986
    sget-boolean v0, Lorg/checkerframework/org/plumelib/util/Intern;->assertsEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/checkerframework/org/plumelib/util/Intern;->isInterned(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 987
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 989
    :cond_1
    :goto_0
    new-instance v0, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;

    invoke-direct {v0, p0, p1, p2}, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;-><init>(Ljava/lang/Object;II)V

    .line 990
    .local v0, "sai":Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;, "Lorg/checkerframework/org/plumelib/util/Intern$Subsequence<[D>;"
    sget-object v1, Lorg/checkerframework/org/plumelib/util/Intern;->internedDoubleSubsequence:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 991
    .local v1, "lookup":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[D>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 992
    .local v2, "result1":[D
    :goto_1
    if-eqz v2, :cond_3

    .line 993
    return-object v2

    .line 995
    :cond_3
    sub-int v3, p2, p1

    invoke-static {p0, p1, v3}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->subarray([DII)[D

    move-result-object v3

    .line 996
    .local v3, "subseq_uninterned":[D
    invoke-static {v3}, Lorg/checkerframework/org/plumelib/util/Intern;->intern([D)[D

    move-result-object v4

    .line 997
    .local v4, "subseq":[D
    sget-object v5, Lorg/checkerframework/org/plumelib/util/Intern;->internedDoubleSubsequence:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v0, v6}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    return-object v4
.end method

.method public static internSubsequence([III)[I
    .locals 7
    .param p0, "seq"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 928
    sget-boolean v0, Lorg/checkerframework/org/plumelib/util/Intern;->assertsEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/checkerframework/org/plumelib/util/Intern;->isInterned(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 929
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 931
    :cond_1
    :goto_0
    new-instance v0, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;

    invoke-direct {v0, p0, p1, p2}, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;-><init>(Ljava/lang/Object;II)V

    .line 932
    .local v0, "sai":Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;, "Lorg/checkerframework/org/plumelib/util/Intern$Subsequence<[I>;"
    sget-object v1, Lorg/checkerframework/org/plumelib/util/Intern;->internedIntSubsequence:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 933
    .local v1, "lookup":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[I>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 934
    .local v2, "result1":[I
    :goto_1
    if-eqz v2, :cond_3

    .line 935
    return-object v2

    .line 937
    :cond_3
    sub-int v3, p2, p1

    invoke-static {p0, p1, v3}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->subarray([III)[I

    move-result-object v3

    .line 938
    .local v3, "subseqUninterned":[I
    invoke-static {v3}, Lorg/checkerframework/org/plumelib/util/Intern;->intern([I)[I

    move-result-object v4

    .line 939
    .local v4, "subseq":[I
    sget-object v5, Lorg/checkerframework/org/plumelib/util/Intern;->internedIntSubsequence:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v0, v6}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    return-object v4
.end method

.method public static internSubsequence([JII)[J
    .locals 7
    .param p0, "seq"    # [J
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 957
    sget-boolean v0, Lorg/checkerframework/org/plumelib/util/Intern;->assertsEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/checkerframework/org/plumelib/util/Intern;->isInterned(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 958
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 960
    :cond_1
    :goto_0
    new-instance v0, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;

    invoke-direct {v0, p0, p1, p2}, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;-><init>(Ljava/lang/Object;II)V

    .line 961
    .local v0, "sai":Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;, "Lorg/checkerframework/org/plumelib/util/Intern$Subsequence<[J>;"
    sget-object v1, Lorg/checkerframework/org/plumelib/util/Intern;->internedLongSubsequence:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 962
    .local v1, "lookup":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[J>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 963
    .local v2, "result1":[J
    :goto_1
    if-eqz v2, :cond_3

    .line 964
    return-object v2

    .line 966
    :cond_3
    sub-int v3, p2, p1

    invoke-static {p0, p1, v3}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->subarray([JII)[J

    move-result-object v3

    .line 967
    .local v3, "subseq_uninterned":[J
    invoke-static {v3}, Lorg/checkerframework/org/plumelib/util/Intern;->intern([J)[J

    move-result-object v4

    .line 968
    .local v4, "subseq":[J
    sget-object v5, Lorg/checkerframework/org/plumelib/util/Intern;->internedLongSubsequence:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v0, v6}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    return-object v4
.end method

.method public static internSubsequence([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 7
    .param p0, "seq"    # [Ljava/lang/Object;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1015
    sget-boolean v0, Lorg/checkerframework/org/plumelib/util/Intern;->assertsEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/checkerframework/org/plumelib/util/Intern;->isInterned(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1016
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1018
    :cond_1
    :goto_0
    new-instance v0, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;

    invoke-direct {v0, p0, p1, p2}, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;-><init>(Ljava/lang/Object;II)V

    .line 1021
    .local v0, "sai":Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;, "Lorg/checkerframework/org/plumelib/util/Intern$Subsequence<[Ljava/lang/Object;>;"
    sget-object v1, Lorg/checkerframework/org/plumelib/util/Intern;->internedObjectSubsequence:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    .line 1022
    invoke-virtual {v1, v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1023
    .local v1, "lookup":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[Ljava/lang/Object;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 1024
    .local v2, "result1":[Ljava/lang/Object;
    :goto_1
    if-eqz v2, :cond_3

    .line 1025
    return-object v2

    .line 1027
    :cond_3
    sub-int v3, p2, p1

    invoke-static {p0, p1, v3}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->subarray([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    .line 1028
    .local v3, "subseq_uninterned":[Ljava/lang/Object;
    invoke-static {v3}, Lorg/checkerframework/org/plumelib/util/Intern;->intern([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .line 1031
    .local v4, "subseq":[Ljava/lang/Object;
    sget-object v5, Lorg/checkerframework/org/plumelib/util/Intern;->internedObjectSubsequence:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1032
    invoke-virtual {v5, v0, v6}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1033
    .local v5, "ignore":Ljava/lang/Object;
    return-object v4
.end method

.method public static internSubsequence([Ljava/lang/String;II)[Ljava/lang/String;
    .locals 7
    .param p0, "seq"    # [Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1050
    sget-boolean v0, Lorg/checkerframework/org/plumelib/util/Intern;->assertsEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/checkerframework/org/plumelib/util/Intern;->isInterned(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1051
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1053
    :cond_1
    :goto_0
    new-instance v0, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;

    invoke-direct {v0, p0, p1, p2}, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;-><init>(Ljava/lang/Object;II)V

    .line 1056
    .local v0, "sai":Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;, "Lorg/checkerframework/org/plumelib/util/Intern$Subsequence<[Ljava/lang/String;>;"
    sget-object v1, Lorg/checkerframework/org/plumelib/util/Intern;->internedStringSubsequence:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    .line 1057
    invoke-virtual {v1, v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1058
    .local v1, "lookup":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 1059
    .local v2, "result1":[Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_3

    .line 1060
    return-object v2

    .line 1062
    :cond_3
    sub-int v3, p2, p1

    invoke-static {p0, p1, v3}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->subarray([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v3

    .line 1063
    .local v3, "subseq_uninterned":[Ljava/lang/String;
    invoke-static {v3}, Lorg/checkerframework/org/plumelib/util/Intern;->intern([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1066
    .local v4, "subseq":[Ljava/lang/String;
    sget-object v5, Lorg/checkerframework/org/plumelib/util/Intern;->internedStringSubsequence:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1067
    invoke-virtual {v5, v0, v6}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1068
    .local v5, "ignore":Ljava/lang/Object;
    return-object v4
.end method

.method public static internedDouble(D)Ljava/lang/Double;
    .locals 1
    .param p0, "d"    # D

    .line 744
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/Intern;->intern(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static internedDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 755
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/checkerframework/org/plumelib/util/Intern;->internedDouble(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static internedInteger(I)Ljava/lang/Integer;
    .locals 1
    .param p0, "i"    # I

    .line 581
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/Intern;->intern(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static internedInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 592
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/Intern;->intern(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static internedLong(J)Ljava/lang/Long;
    .locals 1
    .param p0, "i"    # J

    .line 626
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/Intern;->intern(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static internedLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 637
    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/Intern;->intern(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static isInterned(Ljava/lang/Object;)Z
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 80
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 82
    return v0

    .line 83
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 84
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 85
    :cond_2
    instance-of v1, p0, [Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 86
    move-object v1, p0

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Lorg/checkerframework/org/plumelib/util/Intern;->intern([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-ne p0, v1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0

    .line 87
    :cond_4
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 88
    move-object v1, p0

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Lorg/checkerframework/org/plumelib/util/Intern;->intern(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    if-ne p0, v1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    return v0

    .line 89
    :cond_6
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_8

    .line 90
    move-object v1, p0

    check-cast v1, Ljava/lang/Long;

    invoke-static {v1}, Lorg/checkerframework/org/plumelib/util/Intern;->intern(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    if-ne p0, v1, :cond_7

    goto :goto_3

    :cond_7
    move v0, v2

    :goto_3
    return v0

    .line 91
    :cond_8
    instance-of v1, p0, [I

    if-eqz v1, :cond_a

    .line 92
    move-object v1, p0

    check-cast v1, [I

    check-cast v1, [I

    invoke-static {v1}, Lorg/checkerframework/org/plumelib/util/Intern;->intern([I)[I

    move-result-object v1

    if-ne p0, v1, :cond_9

    goto :goto_4

    :cond_9
    move v0, v2

    :goto_4
    return v0

    .line 93
    :cond_a
    instance-of v1, p0, [J

    if-eqz v1, :cond_c

    .line 94
    move-object v1, p0

    check-cast v1, [J

    check-cast v1, [J

    invoke-static {v1}, Lorg/checkerframework/org/plumelib/util/Intern;->intern([J)[J

    move-result-object v1

    if-ne p0, v1, :cond_b

    goto :goto_5

    :cond_b
    move v0, v2

    :goto_5
    return v0

    .line 95
    :cond_c
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_e

    .line 96
    move-object v1, p0

    check-cast v1, Ljava/lang/Double;

    invoke-static {v1}, Lorg/checkerframework/org/plumelib/util/Intern;->intern(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v1

    if-ne p0, v1, :cond_d

    goto :goto_6

    :cond_d
    move v0, v2

    :goto_6
    return v0

    .line 97
    :cond_e
    instance-of v1, p0, [D

    if-eqz v1, :cond_10

    .line 98
    move-object v1, p0

    check-cast v1, [D

    check-cast v1, [D

    invoke-static {v1}, Lorg/checkerframework/org/plumelib/util/Intern;->intern([D)[D

    move-result-object v1

    if-ne p0, v1, :cond_f

    goto :goto_7

    :cond_f
    move v0, v2

    :goto_7
    return v0

    .line 99
    :cond_10
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_12

    .line 100
    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/checkerframework/org/plumelib/util/Intern;->intern([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-ne p0, v1, :cond_11

    goto :goto_8

    :cond_11
    move v0, v2

    :goto_8
    return v0

    .line 104
    :cond_12
    return v0
.end method

.method protected static longArrays()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[J>;"
        }
    .end annotation

    .line 471
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedLongArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected static longs()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 453
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedLongs:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected static numDoubleArrays()I
    .locals 1

    .line 417
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedDoubleArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->size()I

    move-result v0

    return v0
.end method

.method protected static numDoubles()I
    .locals 1

    .line 408
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedDoubles:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->size()I

    move-result v0

    return v0
.end method

.method protected static numIntArrays()I
    .locals 1

    .line 390
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedIntArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->size()I

    move-result v0

    return v0
.end method

.method protected static numIntegers()I
    .locals 1

    .line 372
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedIntegers:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->size()I

    move-result v0

    return v0
.end method

.method protected static numLongArrays()I
    .locals 1

    .line 399
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedLongArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->size()I

    move-result v0

    return v0
.end method

.method protected static numLongs()I
    .locals 1

    .line 381
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedLongs:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->size()I

    move-result v0

    return v0
.end method

.method protected static numObjectArrays()I
    .locals 1

    .line 435
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedObjectArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->size()I

    move-result v0

    return v0
.end method

.method protected static numStringArrays()I
    .locals 1

    .line 426
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedStringArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->size()I

    move-result v0

    return v0
.end method

.method protected static objectArrays()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 507
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedObjectArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected static stringArrays()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 498
    sget-object v0, Lorg/checkerframework/org/plumelib/util/Intern;->internedStringArrays:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
