.class public final Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;
.super Ljava/lang/Object;
.source "SimpleLog.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final INDENT_STR_ONE_LEVEL:Ljava/lang/String;

.field public enabled:Z

.field private indentLevel:I

.field private indentString:Ljava/lang/String;

.field private indentStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;-><init>(Z)V

    .line 38
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->indentLevel:I

    .line 26
    const-string v0, "  "

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->INDENT_STR_ONE_LEVEL:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->indentString:Ljava/lang/String;

    .line 46
    iput-boolean p1, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->enabled:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->indentStrings:Ljava/util/List;

    .line 48
    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method private getIndentString()Ljava/lang/String;
    .locals 5

    .line 91
    iget-boolean v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->enabled:Z

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->indentString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->indentStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->indentLevel:I

    if-gt v0, v1, :cond_0

    .line 94
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->indentStrings:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->indentStrings:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->indentStrings:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->indentString:Ljava/lang/String;

    .line 98
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->indentString:Ljava/lang/String;

    return-object v0

    .line 91
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public enabled()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->enabled:Z

    return v0
.end method

.method public exdent()V
    .locals 2

    .line 111
    iget-boolean v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->enabled:Z

    if-eqz v0, :cond_1

    .line 112
    iget v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->indentLevel:I

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Called exdent when indentation level was 0."

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->logStackTrace()V

    goto :goto_0

    .line 116
    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->indentLevel:I

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->indentString:Ljava/lang/String;

    .line 120
    :cond_1
    :goto_0
    return-void
.end method

.method public indent()V
    .locals 1

    .line 103
    iget-boolean v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->enabled:Z

    if-eqz v0, :cond_0

    .line 104
    iget v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->indentLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->indentLevel:I

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->indentString:Ljava/lang/String;

    .line 107
    :cond_0
    return-void
.end method

.method public varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/formatter/qual/FormatMethod;
    .end annotation

    .line 70
    iget-boolean v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->enabled:Z

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->getIndentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 72
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 74
    :cond_0
    return-void
.end method

.method public logStackTrace()V
    .locals 7

    .line 78
    iget-boolean v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->enabled:Z

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 80
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 82
    .local v1, "ste_arr":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x2

    .local v2, "ii":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 83
    aget-object v3, v1, v2

    .line 84
    .local v3, "ste":Ljava/lang/StackTraceElement;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->getIndentString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%s  %s%n"

    invoke-virtual {v4, v6, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 82
    .end local v3    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v1    # "ste_arr":[Ljava/lang/StackTraceElement;
    .end local v2    # "ii":I
    :cond_0
    return-void
.end method

.method public resetIndent()V
    .locals 1

    .line 124
    iget-boolean v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->enabled:Z

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->indentLevel:I

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->indentString:Ljava/lang/String;

    .line 128
    :cond_0
    return-void
.end method
