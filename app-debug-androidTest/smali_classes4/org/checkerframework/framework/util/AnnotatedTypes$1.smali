.class Lorg/checkerframework/framework/util/AnnotatedTypes$1;
.super Ljava/lang/Object;
.source "AnnotatedTypes.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/framework/util/AnnotatedTypes;->fixUpRawTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/util/Types;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/checkerframework/javacutil/Pair<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 229
    check-cast p1, Lorg/checkerframework/javacutil/Pair;

    check-cast p2, Lorg/checkerframework/javacutil/Pair;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes$1;->compare(Lorg/checkerframework/javacutil/Pair;Lorg/checkerframework/javacutil/Pair;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/checkerframework/javacutil/Pair;Lorg/checkerframework/javacutil/Pair;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 232
    .local p1, "o1":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p2, "o2":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, p1, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p2, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
