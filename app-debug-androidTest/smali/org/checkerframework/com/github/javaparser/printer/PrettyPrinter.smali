.class public Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinter;
.super Ljava/lang/Object;
.source "PrettyPrinter.java"


# instance fields
.field private final configuration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;-><init>()V

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinter;-><init>(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;)V
    .locals 0
    .param p1, "configuration"    # Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinter;->configuration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    .line 39
    return-void
.end method


# virtual methods
.method public print(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/String;
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinter;->configuration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->getVisitorFactory()Ljava/util/function/Function;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinter;->configuration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;

    .line 43
    .local v0, "visitor":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
