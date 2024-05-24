.class final Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$1;
.super Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$SingleElementIterator;
.source "TextElementIteratorsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory;->reverseIterator(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;I)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$SingleElementIterator<",
        "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$index:I

.field final synthetic val$nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;I)V
    .locals 0
    .param p1, "element"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x1010,
            0x1010
        }
        names = {
            "element",
            "val$index",
            "val$nodeText"
        }
    .end annotation

    .line 162
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$1;->val$nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    iput p3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$1;->val$index:I

    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$SingleElementIterator;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public remove()V
    .locals 2

    .line 165
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$1;->val$nodeText:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$1;->val$index:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    .line 166
    return-void
.end method
