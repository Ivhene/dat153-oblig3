.class public Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;
.super Ljava/lang/Object;
.source "StringBuilderDelimited.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private delegate:Ljava/lang/StringBuilder;

.field private final delimiter:Ljava/lang/String;

.field private empty:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "delimiter"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->delegate:Ljava/lang/StringBuilder;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->empty:Z

    .line 42
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->delimiter:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private appendDelimiter()V
    .locals 2

    .line 47
    iget-boolean v0, p0, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->empty:Z

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->empty:Z

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->delegate:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->delimiter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :goto_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/CharSequence;)Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;
    .locals 1
    .param p1, "newElement"    # Ljava/lang/CharSequence;

    .line 61
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->appendDelimiter()V

    .line 62
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->delegate:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 63
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->append(C)Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->append(Ljava/lang/CharSequence;)Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->append(Ljava/lang/CharSequence;II)Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;

    move-result-object p1

    return-object p1
.end method

.method public append(C)Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;
    .locals 1
    .param p1, "c"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->appendDelimiter()V

    .line 105
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->delegate:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->appendDelimiter()V

    .line 120
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->delegate:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 121
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->appendDelimiter()V

    .line 133
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->delegate:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 134
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->appendDelimiter()V

    .line 90
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->delegate:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    return-object p0
.end method

.method public append(Ljava/lang/String;)Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->appendDelimiter()V

    .line 76
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->delegate:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    return-object p0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->delegate:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 148
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->delegate:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->delegate:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/StringBuilderDelimited;->delegate:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
