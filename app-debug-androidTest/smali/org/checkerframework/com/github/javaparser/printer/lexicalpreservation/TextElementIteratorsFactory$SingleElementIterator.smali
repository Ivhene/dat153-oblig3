.class Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$SingleElementIterator;
.super Ljava/lang/Object;
.source "TextElementIteratorsFactory.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleElementIterator"
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
.field private final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private returned:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 103
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$SingleElementIterator;, "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$SingleElementIterator<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$SingleElementIterator;->element:Ljava/lang/Object;

    .line 105
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 109
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$SingleElementIterator;, "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$SingleElementIterator<TE;>;"
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$SingleElementIterator;->returned:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$SingleElementIterator;, "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$SingleElementIterator<TE;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$SingleElementIterator;->returned:Z

    .line 115
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$SingleElementIterator;->element:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 0

    .line 121
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$SingleElementIterator;, "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$SingleElementIterator<TE;>;"
    return-void
.end method
