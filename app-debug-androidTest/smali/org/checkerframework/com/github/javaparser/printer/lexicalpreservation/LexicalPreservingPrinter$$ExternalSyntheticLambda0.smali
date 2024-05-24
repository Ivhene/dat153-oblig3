.class public final synthetic Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/JavaToken;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/JavaToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/github/javaparser/JavaToken;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->lambda$storeInitialText$1(Lorg/checkerframework/com/github/javaparser/JavaToken;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method
