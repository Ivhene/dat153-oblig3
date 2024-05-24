.class Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator;
.super Ljava/lang/Object;
.source "TextElementIteratorsFactory.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ComposedIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private currIndex:I

.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Iterator<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Iterator<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 128
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator;, "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator<TE;>;"
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Ljava/util/Iterator<TE;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator;->elements:Ljava/util/List;

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator;->currIndex:I

    .line 131
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 135
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator;, "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator<TE;>;"
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator;->currIndex:I

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 136
    const/4 v0, 0x0

    return v0

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator;->elements:Ljava/util/List;

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator;->currIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 139
    return v1

    .line 141
    :cond_1
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator;->currIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator;->currIndex:I

    .line 142
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator;, "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator;->elements:Ljava/util/List;

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator;->currIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 155
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator;, "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator;->elements:Ljava/util/List;

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator;->currIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 156
    return-void
.end method
