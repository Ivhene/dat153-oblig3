.class public Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;
.super Ljava/lang/Object;
.source "TraceSignatureVisitor.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;


# instance fields
.field private argumentStack:I

.field private arrayStack:I

.field private declaration:Ljava/lang/StringBuffer;

.field private exceptions:Ljava/lang/StringBuffer;

.field private isInterface:Z

.field private returnType:Ljava/lang/StringBuffer;

.field private seenFormalParameter:Z

.field private seenInterface:Z

.field private seenInterfaceBound:Z

.field private seenParameter:Z

.field private separator:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "access"    # I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->separator:Ljava/lang/String;

    .line 78
    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->isInterface:Z

    .line 79
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    .line 80
    return-void
.end method

.method private constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->separator:Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    .line 84
    return-void
.end method

.method private endFormals()V
    .locals 2

    .line 280
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->seenFormalParameter:Z

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->seenFormalParameter:Z

    .line 284
    :cond_0
    return-void
.end method

.method private endType()V
    .locals 3

    .line 291
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->arrayStack:I

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 292
    :goto_0
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->arrayStack:I

    rem-int/lit8 v1, v0, 0x2

    if-ne v1, v2, :cond_1

    .line 293
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->arrayStack:I

    .line 294
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 297
    :cond_0
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->arrayStack:I

    .line 299
    :cond_1
    return-void
.end method

.method private startType()V
    .locals 1

    .line 287
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->arrayStack:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->arrayStack:I

    .line 288
    return-void
.end method


# virtual methods
.method public getDeclaration()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExceptions()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->exceptions:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->returnType:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public visitArrayType()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
    .locals 1

    .line 195
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->startType()V

    .line 196
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->arrayStack:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->arrayStack:I

    .line 197
    return-object p0
.end method

.method public visitBaseType(C)V
    .locals 2
    .param p1, "descriptor"    # C

    .line 156
    sparse-switch p1, :sswitch_data_0

    .line 183
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, "double"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 167
    :sswitch_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    goto :goto_0

    .line 158
    :sswitch_1
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, "void"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    goto :goto_0

    .line 173
    :sswitch_2
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    goto :goto_0

    .line 164
    :sswitch_3
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    goto :goto_0

    .line 170
    :sswitch_4
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    goto :goto_0

    .line 179
    :sswitch_5
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, "float"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    goto :goto_0

    .line 176
    :sswitch_6
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    goto :goto_0

    .line 161
    :sswitch_7
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    nop

    .line 186
    :goto_0
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->endType()V

    .line 187
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_7
        0x43 -> :sswitch_6
        0x46 -> :sswitch_5
        0x49 -> :sswitch_4
        0x4a -> :sswitch_3
        0x53 -> :sswitch_2
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public visitClassBound()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
    .locals 1

    .line 93
    const-string v0, " extends "

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->separator:Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->startType()V

    .line 95
    return-object p0
.end method

.method public visitClassType(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 201
    const-string v0, "java/lang/Object"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 209
    :cond_0
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->argumentStack:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->seenParameter:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    move v0, v3

    .line 210
    .local v0, "needObjectClass":Z
    if-eqz v0, :cond_3

    .line 211
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    .end local v0    # "needObjectClass":Z
    :cond_3
    :goto_1
    const-string v0, ""

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->separator:Ljava/lang/String;

    .line 215
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->argumentStack:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->argumentStack:I

    .line 216
    return-void
.end method

.method public visitEnd()V
    .locals 2

    .line 258
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->argumentStack:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 259
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 261
    :cond_0
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->argumentStack:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->argumentStack:I

    .line 262
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->endType()V

    .line 263
    return-void
.end method

.method public visitExceptionType()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
    .locals 2

    .line 146
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->exceptions:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->exceptions:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 149
    :cond_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    :goto_0
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->exceptions:Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;-><init>(Ljava/lang/StringBuffer;)V

    return-object v0
.end method

.method public visitFormalTypeParameter(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->seenFormalParameter:Z

    if-eqz v1, :cond_0

    const-string v1, ", "

    goto :goto_0

    :cond_0
    const-string v1, "<"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->seenFormalParameter:Z

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->seenInterfaceBound:Z

    .line 90
    return-void
.end method

.method public visitInnerClassType(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 219
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->argumentStack:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 222
    :cond_0
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->argumentStack:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->argumentStack:I

    .line 223
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 224
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    const-string v0, ""

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->separator:Ljava/lang/String;

    .line 226
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->argumentStack:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->argumentStack:I

    .line 227
    return-void
.end method

.method public visitInterface()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
    .locals 1

    .line 113
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->seenInterface:Z

    if-eqz v0, :cond_0

    const-string v0, ", "

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->isInterface:Z

    if-eqz v0, :cond_1

    const-string v0, " extends "

    goto :goto_0

    :cond_1
    const-string v0, " implements "

    :goto_0
    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->separator:Ljava/lang/String;

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->seenInterface:Z

    .line 117
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->startType()V

    .line 118
    return-object p0
.end method

.method public visitInterfaceBound()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
    .locals 1

    .line 99
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->seenInterfaceBound:Z

    if-eqz v0, :cond_0

    const-string v0, ", "

    goto :goto_0

    :cond_0
    const-string v0, " extends "

    :goto_0
    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->separator:Ljava/lang/String;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->seenInterfaceBound:Z

    .line 101
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->startType()V

    .line 102
    return-object p0
.end method

.method public visitParameterType()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
    .locals 2

    .line 122
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->endFormals()V

    .line 123
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->seenParameter:Z

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->seenParameter:Z

    .line 125
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    :goto_0
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->startType()V

    .line 130
    return-object p0
.end method

.method public visitReturnType()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
    .locals 2

    .line 134
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->endFormals()V

    .line 135
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->seenParameter:Z

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 138
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->seenParameter:Z

    .line 140
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->returnType:Ljava/lang/StringBuffer;

    .line 142
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;

    invoke-direct {v1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;-><init>(Ljava/lang/StringBuffer;)V

    return-object v1
.end method

.method public visitSuperclass()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
    .locals 1

    .line 106
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->endFormals()V

    .line 107
    const-string v0, " extends "

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->separator:Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->startType()V

    .line 109
    return-object p0
.end method

.method public visitTypeArgument(C)Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
    .locals 2
    .param p1, "tag"    # C

    .line 240
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->argumentStack:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 241
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->argumentStack:I

    .line 242
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    :goto_0
    const/16 v0, 0x2b

    if-ne p1, v0, :cond_1

    .line 248
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, "? extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 249
    :cond_1
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_2

    .line 250
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, "? super "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->startType()V

    .line 254
    return-object p0
.end method

.method public visitTypeArgument()V
    .locals 2

    .line 230
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->argumentStack:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 231
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->argumentStack:I

    .line 232
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 237
    return-void
.end method

.method public visitTypeVariable(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceSignatureVisitor;->endType()V

    .line 192
    return-void
.end method
