.class public Lnet/bytebuddy/jar/asm/signature/SignatureWriter;
.super Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
.source "SignatureWriter.java"


# instance fields
.field private argumentStack:I

.field private hasFormals:Z

.field private hasParameters:Z

.field private final stringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    const/high16 v0, 0x90000

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;-><init>(I)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    .line 74
    return-void
.end method

.method private endArguments()V
    .locals 2

    .line 235
    iget v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->argumentStack:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->argumentStack:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->argumentStack:I

    .line 239
    return-void
.end method

.method private endFormals()V
    .locals 2

    .line 224
    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->hasFormals:Z

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->hasFormals:Z

    .line 226
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitArrayType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 152
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    return-object p0
.end method

.method public visitBaseType(C)V
    .locals 1
    .param p1, "descriptor"    # C

    .line 140
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    return-void
.end method

.method public visitClassBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 0

    .line 92
    return-object p0
.end method

.method public visitClassType(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->argumentStack:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->argumentStack:I

    .line 163
    return-void
.end method

.method public visitEnd()V
    .locals 2

    .line 204
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->endArguments()V

    .line 205
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    return-void
.end method

.method public visitExceptionType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 134
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    return-object p0
.end method

.method public visitFormalTypeParameter(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 82
    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->hasFormals:Z

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->hasFormals:Z

    .line 84
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    return-void
.end method

.method public visitInnerClassType(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 167
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->endArguments()V

    .line 168
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->argumentStack:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->argumentStack:I

    .line 173
    return-void
.end method

.method public visitInterface()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 0

    .line 109
    return-object p0
.end method

.method public visitInterfaceBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 97
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    return-object p0
.end method

.method public visitParameterType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 114
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->endFormals()V

    .line 115
    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->hasParameters:Z

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->hasParameters:Z

    .line 117
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    :cond_0
    return-object p0
.end method

.method public visitReturnType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 124
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->endFormals()V

    .line 125
    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->hasParameters:Z

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    return-object p0
.end method

.method public visitSuperclass()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 0

    .line 103
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->endFormals()V

    .line 104
    return-object p0
.end method

.method public visitTypeArgument(C)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2
    .param p1, "wildcard"    # C

    .line 192
    iget v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->argumentStack:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 193
    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->argumentStack:I

    .line 194
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    :cond_0
    const/16 v0, 0x3d

    if-eq p1, v0, :cond_1

    .line 197
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    :cond_1
    return-object p0
.end method

.method public visitTypeArgument()V
    .locals 2

    .line 180
    iget v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->argumentStack:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 181
    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->argumentStack:I

    .line 182
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    return-void
.end method

.method public visitTypeVariable(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    return-void
.end method
