.class public final synthetic Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator$Provider;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/ast/Node;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda8;->f$0:Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-void
.end method


# virtual methods
.method public final provide()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda8;->f$0:Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->lambda$tokensPreceeding$4(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
