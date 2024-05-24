.class public Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmSingleReference;
.super Ljava/lang/Object;
.source "CsmSingleReference.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;


# instance fields
.field private final property:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)V
    .locals 0
    .param p1, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "property"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmSingleReference;->property:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 38
    return-void
.end method


# virtual methods
.method public getProperty()Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmSingleReference;->property:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    return-object v0
.end method

.method public prettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "printer"    # Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "printer"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmSingleReference;->property:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->getValueAsSingleReference(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    .line 43
    .local v0, "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    if-eqz v0, :cond_0

    .line 44
    invoke-static {v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->genericPrettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V

    .line 46
    :cond_0
    return-void
.end method
