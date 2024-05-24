.class public Lorg/checkerframework/org/plumelib/util/ClassDeterministic;
.super Ljava/lang/Object;
.source "ClassDeterministic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ToStringComparator;,
        Lorg/checkerframework/org/plumelib/util/ClassDeterministic$FieldComparator;,
        Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ConstructorComparator;,
        Lorg/checkerframework/org/plumelib/util/ClassDeterministic$MethodComparator;,
        Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ClassComparator;,
        Lorg/checkerframework/org/plumelib/util/ClassDeterministic$AnnotationComparator;
    }
.end annotation


# static fields
.field static annotationComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$AnnotationComparator;

.field static classComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ClassComparator;

.field static constructorComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ConstructorComparator;

.field static fieldComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$FieldComparator;

.field static methodComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$MethodComparator;

.field static toStringComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ToStringComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 178
    new-instance v0, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$AnnotationComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$AnnotationComparator;-><init>(Lorg/checkerframework/org/plumelib/util/ClassDeterministic$1;)V

    sput-object v0, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;->annotationComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$AnnotationComparator;

    .line 190
    new-instance v0, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ClassComparator;

    invoke-direct {v0, v1}, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ClassComparator;-><init>(Lorg/checkerframework/org/plumelib/util/ClassDeterministic$1;)V

    sput-object v0, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;->classComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ClassComparator;

    .line 205
    new-instance v0, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$MethodComparator;

    invoke-direct {v0, v1}, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$MethodComparator;-><init>(Lorg/checkerframework/org/plumelib/util/ClassDeterministic$1;)V

    sput-object v0, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;->methodComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$MethodComparator;

    .line 254
    new-instance v0, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ConstructorComparator;

    invoke-direct {v0, v1}, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ConstructorComparator;-><init>(Lorg/checkerframework/org/plumelib/util/ClassDeterministic$1;)V

    sput-object v0, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;->constructorComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ConstructorComparator;

    .line 287
    new-instance v0, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$FieldComparator;

    invoke-direct {v0, v1}, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$FieldComparator;-><init>(Lorg/checkerframework/org/plumelib/util/ClassDeterministic$1;)V

    sput-object v0, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;->fieldComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$FieldComparator;

    .line 303
    new-instance v0, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ToStringComparator;

    invoke-direct {v0, v1}, Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ToStringComparator;-><init>(Lorg/checkerframework/org/plumelib/util/ClassDeterministic$1;)V

    sput-object v0, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;->toStringComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ToStringComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Error;

    const-string v1, "do not instantiate"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/annotation/Annotation;"
        }
    .end annotation

    .line 31
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 32
    .local v0, "result":[Ljava/lang/annotation/Annotation;
    sget-object v1, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;->annotationComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$AnnotationComparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 33
    return-object v0
.end method

.method public static getClasses(Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 55
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 56
    .local v0, "result":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    sget-object v1, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;->classComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ClassComparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 57
    return-object v0
.end method

.method public static getConstructors(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 95
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 96
    .local v0, "result":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    sget-object v1, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;->constructorComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ConstructorComparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 97
    return-object v0
.end method

.method public static getDeclaredAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/annotation/Annotation;"
        }
    .end annotation

    .line 43
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 44
    .local v0, "result":[Ljava/lang/annotation/Annotation;
    sget-object v1, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;->annotationComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$AnnotationComparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 45
    return-object v0
.end method

.method public static getDeclaredClasses(Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 67
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 68
    .local v0, "result":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    sget-object v1, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;->classComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ClassComparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 69
    return-object v0
.end method

.method public static getDeclaredConstructors(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 107
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 108
    .local v0, "result":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    sget-object v1, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;->constructorComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ConstructorComparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 109
    return-object v0
.end method

.method public static getDeclaredFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 131
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 132
    .local v0, "result":[Ljava/lang/reflect/Field;
    sget-object v1, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;->fieldComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$FieldComparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 133
    return-object v0
.end method

.method public static getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 155
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 156
    .local v0, "result":[Ljava/lang/reflect/Method;
    sget-object v1, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;->methodComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$MethodComparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 157
    return-object v0
.end method

.method public static getEnumConstants(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 80
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    .line 81
    .local v0, "result":[Ljava/lang/Object;, "[TT;"
    if-nez v0, :cond_0

    .line 82
    const/4 v1, 0x0

    return-object v1

    .line 84
    :cond_0
    sget-object v1, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;->toStringComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$ToStringComparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 85
    return-object v0
.end method

.method public static getFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 119
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 120
    .local v0, "result":[Ljava/lang/reflect/Field;
    sget-object v1, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;->fieldComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$FieldComparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 121
    return-object v0
.end method

.method public static getMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 143
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 144
    .local v0, "result":[Ljava/lang/reflect/Method;
    sget-object v1, Lorg/checkerframework/org/plumelib/util/ClassDeterministic;->methodComparator:Lorg/checkerframework/org/plumelib/util/ClassDeterministic$MethodComparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 145
    return-object v0
.end method

.method private toSortedList([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 171
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 173
    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 174
    return-object v0
.end method
