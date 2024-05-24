.class Lorg/checkerframework/org/plumelib/util/ClassDeterministic$FieldComparator;
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
    name = "FieldComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/plumelib/util/ClassDeterministic$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/plumelib/util/ClassDeterministic$1;

    .line 290
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$FieldComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 290
    check-cast p1, Ljava/lang/reflect/Field;

    check-cast p2, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$FieldComparator;->compare(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)I
    .locals 3
    .param p1, "f1"    # Ljava/lang/reflect/Field;
    .param p2, "f2"    # Ljava/lang/reflect/Field;

    .line 294
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;->classComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ClassComparator;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ClassComparator;->compare(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v0

    .line 295
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 296
    return v0

    .line 298
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method
