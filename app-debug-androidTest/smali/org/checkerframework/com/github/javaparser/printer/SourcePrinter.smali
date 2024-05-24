.class public Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;
.super Ljava/lang/Object;
.source "SourcePrinter.java"


# instance fields
.field private final buf:Ljava/lang/StringBuilder;

.field private cursor:Lorg/checkerframework/com/github/javaparser/Position;

.field private final endOfLineCharacter:Ljava/lang/String;

.field private final indentType:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

.field private final indentation:Ljava/lang/String;

.field private indented:Z

.field private final indents:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastPrintedIndent:Ljava/lang/String;

.field private final reindentedIndents:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tabWidth:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 50
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;-><init>()V

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;-><init>(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;)V

    .line 51
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;)V
    .locals 5
    .param p1, "configuration"    # Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    .line 43
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->reindentedIndents:Ljava/util/Deque;

    .line 44
    const-string v1, ""

    iput-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->lastPrintedIndent:Ljava/lang/String;

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->buf:Ljava/lang/StringBuilder;

    .line 46
    new-instance v2, Lorg/checkerframework/com/github/javaparser/Position;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/com/github/javaparser/Position;-><init>(II)V

    iput-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->cursor:Lorg/checkerframework/com/github/javaparser/Position;

    .line 47
    iput-boolean v4, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indented:Z

    .line 54
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->getIndent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indentation:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->getEndOfLineCharacter()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->endOfLineCharacter:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->getTabWidth()I

    move-result v2

    iput v2, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->tabWidth:I

    .line 57
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->getIndentType()Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indentType:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

    .line 58
    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 3
    .param p1, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->cursor:Lorg/checkerframework/com/github/javaparser/Position;

    iget v1, v0, Lorg/checkerframework/com/github/javaparser/Position;->column:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/Position;->withColumn(I)Lorg/checkerframework/com/github/javaparser/Position;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->cursor:Lorg/checkerframework/com/github/javaparser/Position;

    .line 152
    return-void
.end method

.method private calculateIndentWithAlignTo(I)Ljava/lang/String;
    .locals 7
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "column"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->lastPrintedIndent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_4

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->lastPrintedIndent:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "newIndent":Ljava/lang/StringBuilder;
    sget-object v1, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter$1;->$SwitchMap$com$github$javaparser$printer$PrettyPrinterConfiguration$IndentType:[I

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indentType:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x20

    packed-switch v1, :pswitch_data_0

    .line 129
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Unhandled indent type"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 107
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 108
    .local v1, "logicalIndentLength":I
    :goto_0
    iget v3, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->tabWidth:I

    add-int/2addr v3, v1

    if-gt v3, p1, :cond_0

    .line 109
    const/4 v3, 0x0

    const/16 v4, 0x9

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 110
    iget v3, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->tabWidth:I

    add-int/2addr v1, v3

    goto :goto_0

    .line 112
    :cond_0
    :goto_1
    if-ge v1, p1, :cond_1

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 116
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v3, "fullTab":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget v5, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->tabWidth:I

    if-ge v4, v5, :cond_2

    .line 118
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 120
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "fullTabString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v5, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->tabWidth:I

    if-lt v4, v5, :cond_3

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v5, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->tabWidth:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 124
    .restart local v4    # "i":I
    iget v5, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->tabWidth:I

    add-int/2addr v5, v4

    const-string v6, "\t"

    invoke-virtual {v0, v4, v5, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .end local v4    # "i":I
    goto :goto_4

    .line 101
    .end local v1    # "logicalIndentLength":I
    .end local v2    # "fullTabString":Ljava/lang/String;
    .end local v3    # "fullTab":Ljava/lang/StringBuilder;
    :goto_3
    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, p1, :cond_3

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 132
    :cond_3
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 94
    .end local v0    # "newIndent":Ljava/lang/StringBuilder;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to indent less than the previous indent."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public duplicateIndent()V
    .locals 2

    .line 273
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 274
    return-void
.end method

.method public getCursor()Lorg/checkerframework/com/github/javaparser/Position;
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->cursor:Lorg/checkerframework/com/github/javaparser/Position;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public indent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;
    .locals 4

    .line 66
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    .local v0, "currentIndent":Ljava/lang/String;
    sget-object v1, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter$1;->$SwitchMap$com$github$javaparser$printer$PrettyPrinterConfiguration$IndentType:[I

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indentType:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration$IndentType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 78
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Unhandled indent type"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 74
    :pswitch_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indentation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 75
    goto :goto_0

    .line 70
    :pswitch_1
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indentation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 71
    nop

    .line 80
    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public indentWithAlignTo(I)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;
    .locals 2
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "column"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->calculateIndentWithAlignTo(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 89
    return-object p0
.end method

.method public normalizeEolInTextBlock(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->endOfLineCharacter:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->normalizeEolInTextBlock(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "arg"
        }
    .end annotation

    .line 168
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indented:Z

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->lastPrintedIndent:Ljava/lang/String;

    .line 170
    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->append(Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indented:Z

    .line 173
    :cond_0
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->append(Ljava/lang/String;)V

    .line 174
    return-object p0
.end method

.method public println()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;
    .locals 2

    .line 200
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->buf:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->endOfLineCharacter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->cursor:Lorg/checkerframework/com/github/javaparser/Position;

    iget v0, v0, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/checkerframework/com/github/javaparser/Position;->pos(II)Lorg/checkerframework/com/github/javaparser/Position;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->cursor:Lorg/checkerframework/com/github/javaparser/Position;

    .line 202
    iput-boolean v1, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indented:Z

    .line 203
    return-object p0
.end method

.method public println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;
    .locals 0
    .param p1, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "arg"
        }
    .end annotation

    .line 189
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 190
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 191
    return-object p0
.end method

.method public reindentToPreviousLevel()V
    .locals 2

    .line 259
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->reindentedIndents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->reindentedIndents:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 264
    return-void

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reindent calls are not well-balanced."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reindentWithAlignToCursor()V
    .locals 3

    .line 249
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->cursor:Lorg/checkerframework/com/github/javaparser/Position;

    iget v0, v0, Lorg/checkerframework/com/github/javaparser/Position;->column:I

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->calculateIndentWithAlignTo(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "newIndent":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->reindentedIndents:Ljava/util/Deque;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 251
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 252
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unindent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;
    .locals 2

    .line 140
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 146
    return-object p0

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Indent/unindent calls are not well-balanced."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
