.class public Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmChar;
.super Ljava/lang/Object;
.source "CsmChar.java"

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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmChar;->property:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 33
    return-void
.end method


# virtual methods
.method public prettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V
    .locals 2
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

    .line 37
    const-string v0, "\'"

    invoke-virtual {p2, v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 38
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmChar;->property:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->getValueAsStringAttribute(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 39
    invoke-virtual {p2, v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 40
    return-void
.end method
