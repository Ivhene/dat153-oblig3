.class public Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;
.super Ljava/lang/Object;
.source "SignatureWriter.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;


# instance fields
.field private argumentStack:I

.field private final buf:Ljava/lang/StringBuffer;

.field private hasFormals:Z

.field private hasParameters:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    .line 67
    return-void
.end method

.method private endArguments()V
    .locals 2

    .line 202
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->argumentStack:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 205
    :cond_0
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->argumentStack:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->argumentStack:I

    .line 206
    return-void
.end method

.method private endFormals()V
    .locals 2

    .line 192
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->hasFormals:Z

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->hasFormals:Z

    .line 194
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 196
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitArrayType()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
    .locals 2

    .line 134
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 135
    return-object p0
.end method

.method public visitBaseType(C)V
    .locals 1
    .param p1, "descriptor"    # C

    .line 124
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 125
    return-void
.end method

.method public visitClassBound()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
    .locals 0

    .line 83
    return-object p0
.end method

.method public visitClassType(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 140
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->argumentStack:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->argumentStack:I

    .line 142
    return-void
.end method

.method public visitEnd()V
    .locals 2

    .line 171
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->endArguments()V

    .line 172
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 173
    return-void
.end method

.method public visitExceptionType()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
    .locals 2

    .line 119
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 120
    return-object p0
.end method

.method public visitFormalTypeParameter(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 74
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->hasFormals:Z

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->hasFormals:Z

    .line 76
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    return-void
.end method

.method public visitInnerClassType(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->endArguments()V

    .line 146
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 147
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->argumentStack:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->argumentStack:I

    .line 149
    return-void
.end method

.method public visitInterface()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
    .locals 0

    .line 97
    return-object p0
.end method

.method public visitInterfaceBound()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
    .locals 2

    .line 87
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 88
    return-object p0
.end method

.method public visitParameterType()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
    .locals 2

    .line 101
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->endFormals()V

    .line 102
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->hasParameters:Z

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->hasParameters:Z

    .line 104
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 106
    :cond_0
    return-object p0
.end method

.method public visitReturnType()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
    .locals 2

    .line 110
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->endFormals()V

    .line 111
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->hasParameters:Z

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 115
    return-object p0
.end method

.method public visitSuperclass()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
    .locals 0

    .line 92
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->endFormals()V

    .line 93
    return-object p0
.end method

.method public visitTypeArgument(C)Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;
    .locals 2
    .param p1, "wildcard"    # C

    .line 160
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->argumentStack:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 161
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->argumentStack:I

    .line 162
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 164
    :cond_0
    const/16 v0, 0x3d

    if-eq p1, v0, :cond_1

    .line 165
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 167
    :cond_1
    return-object p0
.end method

.method public visitTypeArgument()V
    .locals 2

    .line 152
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->argumentStack:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 153
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->argumentStack:I

    .line 154
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 157
    return-void
.end method

.method public visitTypeVariable(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 129
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureWriter;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 131
    return-void
.end method
