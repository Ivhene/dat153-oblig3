.class Lorg/checkerframework/org/plumelib/util/ClassDeterministic$MethodComparator;
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
    name = "MethodComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 211
    const-class v0, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/plumelib/util/ClassDeterministic$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/plumelib/util/ClassDeterministic$1;

    .line 211
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$MethodComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 211
    check-cast p1, Ljava/lang/reflect/Method;

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$MethodComparator;->compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I
    .locals 7
    .param p1, "m1"    # Ljava/lang/reflect/Method;
    .param p2, "m2"    # Ljava/lang/reflect/Method;

    .line 216
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 217
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 218
    return v0

    .line 220
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 221
    .local v1, "ptypes1":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 222
    .local v2, "ptypes2":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v1

    array-length v4, v2

    sub-int/2addr v3, v4

    .line 223
    .end local v0    # "result":I
    .local v3, "result":I
    if-eqz v3, :cond_1

    .line 224
    return v3

    .line 226
    :cond_1
    array-length v0, v1

    array-length v4, v2

    if-ne v0, v4, :cond_5

    .line 228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_3

    .line 229
    sget-object v4, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;->classComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ClassComparator;

    aget-object v5, v1, v0

    aget-object v6, v2, v0

    invoke-virtual {v4, v5, v6}, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ClassComparator;->compare(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v3

    .line 230
    if-eqz v3, :cond_2

    .line 231
    return v3

    .line 228
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "i":I
    :cond_3
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;->classComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ClassComparator;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ClassComparator;->compare(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v0

    .line 237
    .end local v3    # "result":I
    .local v0, "result":I
    if-eqz v0, :cond_4

    .line 238
    return v0

    .line 242
    :cond_4
    sget-object v3, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;->classComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ClassComparator;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ClassComparator;->compare(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v0

    .line 243
    nop

    .line 244
    return v0

    .line 226
    .end local v0    # "result":I
    .restart local v3    # "result":I
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    const-string v4, "@AssumeAssertion(index): difference of lengths is 0; https://github.com/kelloggm/checker-framework/issues/231"

    invoke-direct {v0, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
