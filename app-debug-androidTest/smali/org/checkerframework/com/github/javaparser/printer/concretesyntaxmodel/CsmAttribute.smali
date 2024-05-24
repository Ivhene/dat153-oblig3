.class public Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;
.super Ljava/lang/Object;
.source "CsmAttribute.java"

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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;->property:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 41
    return-void
.end method


# virtual methods
.method public getProperty()Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;->property:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    return-object v0
.end method

.method public getTokenType(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "tokenText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "text",
            "tokenText"
        }
    .end annotation

    .line 56
    sget-object v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmAttribute$1;->$SwitchMap$com$github$javaparser$ast$observer$ObservableProperty:[I

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;->property:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "Attribute \'%s\' does not corresponding to any expected value. Text: %s"

    const/16 v2, 0x5d

    const-string v3, "\""

    packed-switch v0, :pswitch_data_0

    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTokenType does not know how to handle property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;->property:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :pswitch_0
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;

    if-eqz v0, :cond_0

    .line 80
    const/16 v0, 0x4c

    return v0

    .line 83
    :cond_0
    :pswitch_1
    return v2

    .line 70
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "expectedImage":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserConstants;->tokenImage:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 72
    sget-object v3, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserConstants;->tokenImage:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    return v2

    .line 71
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;->property:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->camelCaseName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, p3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    .end local v0    # "expectedImage":Ljava/lang/String;
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .restart local v0    # "expectedImage":Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    sget-object v3, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserConstants;->tokenImage:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 62
    sget-object v3, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserConstants;->tokenImage:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 63
    return v2

    .line 61
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 66
    .end local v2    # "i":I
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;->property:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->camelCaseName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    .end local v0    # "expectedImage":Ljava/lang/String;
    :pswitch_4
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

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

    .line 45
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;->property:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->getRawValue(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    .local v0, "value":Ljava/lang/Object;
    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/PrintingHelper;->printToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 47
    return-void
.end method
