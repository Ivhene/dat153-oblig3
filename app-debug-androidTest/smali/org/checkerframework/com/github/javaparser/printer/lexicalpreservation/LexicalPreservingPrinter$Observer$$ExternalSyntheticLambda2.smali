.class public final synthetic Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->lambda$findChildTextElementForComment$1(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    move-result-object p1

    return-object p1
.end method