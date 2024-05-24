.class Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ConstructorComparator;
.super Ljava/lang/Object;
.source "ClassDeterministic.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/ClassDeterministic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConstructorComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/reflect/Constructor<",
        "*>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 260
    const-class v0, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/plumelib/util/ClassDeterministic$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/plumelib/util/ClassDeterministic$1;

    .line 260
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ConstructorComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 260
    check-cast p1, Ljava/lang/reflect/Constructor;

    check-cast p2, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ConstructorComparator;->compare(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;)I"
        }
    .end annotation

    .line 264
    .local p1, "c1":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p2, "c2":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;->classComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ClassComparator;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ClassComparator;->compare(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v0

    .line 265
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 266
    return v0

    .line 268
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 269
    .local v1, "ptypes1":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 270
    .local v2, "ptypes2":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v1

    array-length v4, v2

    sub-int/2addr v3, v4

    .line 271
    .end local v0    # "result":I
    .local v3, "result":I
    if-eqz v3, :cond_1

    .line 272
    return v3

    .line 274
    :cond_1
    array-length v0, v1

    array-length v4, v2

    if-ne v0, v4, :cond_4

    .line 276
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_3

    .line 277
    sget-object v4, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;->classComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ClassComparator;

    aget-object v5, v1, v0

    aget-object v6, v2, v0

    invoke-virtual {v4, v5, v6}, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ClassComparator;->compare(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v3

    .line 278
    if-eqz v3, :cond_2

    .line 279
    return v3

    .line 276
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    .end local v0    # "i":I
    :cond_3
    return v3

    .line 274
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    const-string v4, "@AssumeAssertion(index): difference of lengths is 0; https://github.com/kelloggm/checker-framework/issues/231"

    invoke-direct {v0, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
