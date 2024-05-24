.class Lorg/checkerframework/org/plumelib/util/ClassDeterministic$AnnotationComparator;
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
    name = "AnnotationComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/annotation/Annotation;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/plumelib/util/ClassDeterministic$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/plumelib/util/ClassDeterministic$1;

    .line 181
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$AnnotationComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 181
    check-cast p1, Ljava/lang/annotation/Annotation;

    check-cast p2, Ljava/lang/annotation/Annotation;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$AnnotationComparator;->compare(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)I
    .locals 3
    .param p1, "a1"    # Ljava/lang/annotation/Annotation;
    .param p2, "a2"    # Ljava/lang/annotation/Annotation;

    .line 185
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;->classComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ClassComparator;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ClassComparator;->compare(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v0

    return v0
.end method
