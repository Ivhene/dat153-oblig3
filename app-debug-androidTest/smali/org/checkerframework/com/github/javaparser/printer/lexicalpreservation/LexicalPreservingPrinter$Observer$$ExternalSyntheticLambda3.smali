.class public final synthetic Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->lambda$findChildTextElementForComment$2(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;)Z

    move-result p1

    return p1
.end method