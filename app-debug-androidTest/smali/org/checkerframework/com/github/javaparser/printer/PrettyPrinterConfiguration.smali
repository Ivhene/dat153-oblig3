.class public Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;
.super Ljava/lang/Object;
.source "PrettyPrinterConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_ENUM_CONSTANTS_TO_ALIGN_HORIZONTALLY:I = 0x5


# instance fields
.field private columnAlignFirstMethodChain:Z

.field private columnAlignParameters:Z

.field private endOfLineCharacter:Ljava/lang/String;

.field private indentSize:I

.field private indentType:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

.field private maxEnumConstantsToAlignHorizontally:I

.field private orderImports:Z

.field private printComments:Z

.field private printJavadoc:Z

.field private tabWidth:I

.field private visitorFactory:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->orderImports:Z

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->printComments:Z

    .line 78
    iput-boolean v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->printJavadoc:Z

    .line 79
    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->columnAlignParameters:Z

    .line 80
    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->columnAlignFirstMethodChain:Z

    .line 81
    sget-object v0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;->SPACES:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->indentType:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

    .line 82
    const/4 v0, 0x4

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->tabWidth:I

    .line 83
    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->indentSize:I

    .line 84
    sget-object v0, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->endOfLineCharacter:Ljava/lang/String;

    .line 85
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->visitorFactory:Ljava/util/function/Function;

    .line 86
    const/4 v0, 0x5

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->maxEnumConstantsToAlignHorizontally:I

    return-void
.end method


# virtual methods
.method public getEndOfLineCharacter()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->endOfLineCharacter:Ljava/lang/String;

    return-object v0
.end method

.method public getIndent()Ljava/lang/String;
    .locals 4

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v0, "indentString":Ljava/lang/StringBuilder;
    sget-object v1, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$1;->$SwitchMap$com$github$javaparser$printer$PrettyPrinterConfiguration$IndentType:[I

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->indentType:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 105
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Unhandled indent type"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 101
    :pswitch_0
    const/16 v1, 0x9

    .line 102
    .local v1, "indentChar":C
    goto :goto_0

    .line 96
    .end local v1    # "indentChar":C
    :pswitch_1
    const/16 v1, 0x20

    .line 97
    .restart local v1    # "indentChar":C
    nop

    .line 107
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->indentSize:I

    if-ge v2, v3, :cond_0

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 110
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getIndentSize()I
    .locals 1

    .line 114
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->indentSize:I

    return v0
.end method

.method public getIndentType()Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->indentType:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

    return-object v0
.end method

.method public getMaxEnumConstantsToAlignHorizontally()I
    .locals 1

    .line 240
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->maxEnumConstantsToAlignHorizontally:I

    return v0
.end method

.method public getTabWidth()I
    .locals 1

    .line 144
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->tabWidth:I

    return v0
.end method

.method public getVisitorFactory()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->visitorFactory:Ljava/util/function/Function;

    return-object v0
.end method

.method public isColumnAlignFirstMethodChain()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->columnAlignFirstMethodChain:Z

    return v0
.end method

.method public isColumnAlignParameters()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->columnAlignParameters:Z

    return v0
.end method

.method public isIgnoreComments()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->printComments:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isOrderImports()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->orderImports:Z

    return v0
.end method

.method public isPrintComments()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->printComments:Z

    return v0
.end method

.method public isPrintJavadoc()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->printJavadoc:Z

    return v0
.end method

.method public setColumnAlignFirstMethodChain(Z)Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;
    .locals 0
    .param p1, "columnAlignFirstMethodChain"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "columnAlignFirstMethodChain"
        }
    .end annotation

    .line 202
    iput-boolean p1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->columnAlignFirstMethodChain:Z

    .line 203
    return-object p0
.end method

.method public setColumnAlignParameters(Z)Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;
    .locals 0
    .param p1, "columnAlignParameters"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "columnAlignParameters"
        }
    .end annotation

    .line 197
    iput-boolean p1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->columnAlignParameters:Z

    .line 198
    return-object p0
.end method

.method public setEndOfLineCharacter(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;
    .locals 1
    .param p1, "endOfLineCharacter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endOfLineCharacter"
        }
    .end annotation

    .line 227
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->endOfLineCharacter:Ljava/lang/String;

    .line 228
    return-object p0
.end method

.method public setIndentSize(I)Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;
    .locals 1
    .param p1, "indentSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indentSize"
        }
    .end annotation

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNonNegative(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->indentSize:I

    .line 122
    return-object p0
.end method

.method public setIndentType(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;)Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;
    .locals 1
    .param p1, "indentType"    # Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indentType"
        }
    .end annotation

    .line 136
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->indentType:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

    .line 137
    return-object p0
.end method

.method public setMaxEnumConstantsToAlignHorizontally(I)Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;
    .locals 0
    .param p1, "maxEnumConstantsToAlignHorizontally"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxEnumConstantsToAlignHorizontally"
        }
    .end annotation

    .line 267
    iput p1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->maxEnumConstantsToAlignHorizontally:I

    .line 268
    return-object p0
.end method

.method public setOrderImports(Z)Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;
    .locals 0
    .param p1, "orderImports"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orderImports"
        }
    .end annotation

    .line 235
    iput-boolean p1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->orderImports:Z

    .line 236
    return-object p0
.end method

.method public setPrintComments(Z)Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;
    .locals 0
    .param p1, "printComments"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "printComments"
        }
    .end annotation

    .line 184
    iput-boolean p1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->printComments:Z

    .line 185
    return-object p0
.end method

.method public setPrintJavadoc(Z)Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;
    .locals 0
    .param p1, "printJavadoc"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "printJavadoc"
        }
    .end annotation

    .line 192
    iput-boolean p1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->printJavadoc:Z

    .line 193
    return-object p0
.end method

.method public setTabWidth(I)Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;
    .locals 1
    .param p1, "tabWidth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabWidth"
        }
    .end annotation

    .line 151
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertPositive(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->tabWidth:I

    .line 152
    return-object p0
.end method

.method public setVisitorFactory(Ljava/util/function/Function;)Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visitorFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;"
        }
    .end annotation

    .line 215
    .local p1, "visitorFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<Ljava/lang/Void;>;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Function;

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->visitorFactory:Ljava/util/function/Function;

    .line 216
    return-object p0
.end method
