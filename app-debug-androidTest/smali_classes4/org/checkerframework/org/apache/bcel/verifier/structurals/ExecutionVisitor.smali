.class public Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;
.super Lorg/checkerframework/org/apache/bcel/generic/EmptyVisitor;
.source "ExecutionVisitor.java"


# instance fields
.field private cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

.field private frame:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/EmptyVisitor;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->frame:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    .line 73
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 78
    return-void
.end method

.method private locals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->frame:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getLocals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v0

    return-object v0
.end method

.method private stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->frame:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getStack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setConstantPoolGen(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 0
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 100
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 101
    return-void
.end method

.method public setFrame(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;)V
    .locals 0
    .param p1, "f"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    .line 110
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->frame:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    .line 111
    return-void
.end method

.method public visitAALOAD(Lorg/checkerframework/org/apache/bcel/generic/AALOAD;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/AALOAD;

    .line 126
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 128
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 129
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-ne v0, v1, :cond_0

    .line 130
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    goto :goto_0

    .line 133
    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    .line 134
    .local v1, "at":Lorg/checkerframework/org/apache/bcel/generic/ArrayType;
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getElementType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 136
    .end local v1    # "at":Lorg/checkerframework/org/apache/bcel/generic/ArrayType;
    :goto_0
    return-void
.end method

.method public visitAASTORE(Lorg/checkerframework/org/apache/bcel/generic/AASTORE;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/AASTORE;

    .line 140
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 141
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 142
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 143
    return-void
.end method

.method public visitACONST_NULL(Lorg/checkerframework/org/apache/bcel/generic/ACONST_NULL;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ACONST_NULL;

    .line 147
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 148
    return-void
.end method

.method public visitALOAD(Lorg/checkerframework/org/apache/bcel/generic/ALOAD;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ALOAD;

    .line 152
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->locals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ALOAD;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->get(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 153
    return-void
.end method

.method public visitANEWARRAY(Lorg/checkerframework/org/apache/bcel/generic/ANEWARRAY;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ANEWARRAY;

    .line 157
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 158
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ANEWARRAY;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;-><init>(Lorg/checkerframework/org/apache/bcel/generic/Type;I)V

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 159
    return-void
.end method

.method public visitARETURN(Lorg/checkerframework/org/apache/bcel/generic/ARETURN;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ARETURN;

    .line 163
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 164
    return-void
.end method

.method public visitARRAYLENGTH(Lorg/checkerframework/org/apache/bcel/generic/ARRAYLENGTH;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ARRAYLENGTH;

    .line 168
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 169
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 170
    return-void
.end method

.method public visitASTORE(Lorg/checkerframework/org/apache/bcel/generic/ASTORE;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ASTORE;

    .line 175
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->locals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ASTORE;->getIndex()I

    move-result v1

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->set(ILorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 177
    return-void
.end method

.method public visitATHROW(Lorg/checkerframework/org/apache/bcel/generic/ATHROW;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ATHROW;

    .line 182
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 183
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->clear()V

    .line 184
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    const-string v2, "Ljava/lang/NullPointerException;"

    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 189
    :goto_0
    return-void
.end method

.method public visitBALOAD(Lorg/checkerframework/org/apache/bcel/generic/BALOAD;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/BALOAD;

    .line 194
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 195
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 196
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 197
    return-void
.end method

.method public visitBASTORE(Lorg/checkerframework/org/apache/bcel/generic/BASTORE;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/BASTORE;

    .line 202
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 203
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 204
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 205
    return-void
.end method

.method public visitBIPUSH(Lorg/checkerframework/org/apache/bcel/generic/BIPUSH;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/BIPUSH;

    .line 210
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 211
    return-void
.end method

.method public visitCALOAD(Lorg/checkerframework/org/apache/bcel/generic/CALOAD;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/CALOAD;

    .line 216
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 217
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 218
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 219
    return-void
.end method

.method public visitCASTORE(Lorg/checkerframework/org/apache/bcel/generic/CASTORE;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/CASTORE;

    .line 223
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 224
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 225
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 226
    return-void
.end method

.method public visitCHECKCAST(Lorg/checkerframework/org/apache/bcel/generic/CHECKCAST;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/CHECKCAST;

    .line 235
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 236
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/CHECKCAST;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 237
    return-void
.end method

.method public visitD2F(Lorg/checkerframework/org/apache/bcel/generic/D2F;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/D2F;

    .line 242
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 243
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 244
    return-void
.end method

.method public visitD2I(Lorg/checkerframework/org/apache/bcel/generic/D2I;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/D2I;

    .line 248
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 249
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 250
    return-void
.end method

.method public visitD2L(Lorg/checkerframework/org/apache/bcel/generic/D2L;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/D2L;

    .line 254
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 255
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 256
    return-void
.end method

.method public visitDADD(Lorg/checkerframework/org/apache/bcel/generic/DADD;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DADD;

    .line 260
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 261
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 262
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 263
    return-void
.end method

.method public visitDALOAD(Lorg/checkerframework/org/apache/bcel/generic/DALOAD;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DALOAD;

    .line 267
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 268
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 269
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 270
    return-void
.end method

.method public visitDASTORE(Lorg/checkerframework/org/apache/bcel/generic/DASTORE;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DASTORE;

    .line 274
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 275
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 276
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 277
    return-void
.end method

.method public visitDCMPG(Lorg/checkerframework/org/apache/bcel/generic/DCMPG;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DCMPG;

    .line 281
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 282
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 283
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 284
    return-void
.end method

.method public visitDCMPL(Lorg/checkerframework/org/apache/bcel/generic/DCMPL;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DCMPL;

    .line 288
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 289
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 290
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 291
    return-void
.end method

.method public visitDCONST(Lorg/checkerframework/org/apache/bcel/generic/DCONST;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DCONST;

    .line 295
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 296
    return-void
.end method

.method public visitDDIV(Lorg/checkerframework/org/apache/bcel/generic/DDIV;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DDIV;

    .line 300
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 301
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 302
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 303
    return-void
.end method

.method public visitDLOAD(Lorg/checkerframework/org/apache/bcel/generic/DLOAD;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DLOAD;

    .line 307
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 308
    return-void
.end method

.method public visitDMUL(Lorg/checkerframework/org/apache/bcel/generic/DMUL;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DMUL;

    .line 312
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 313
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 314
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 315
    return-void
.end method

.method public visitDNEG(Lorg/checkerframework/org/apache/bcel/generic/DNEG;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DNEG;

    .line 319
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 320
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 321
    return-void
.end method

.method public visitDREM(Lorg/checkerframework/org/apache/bcel/generic/DREM;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DREM;

    .line 325
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 326
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 327
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 328
    return-void
.end method

.method public visitDRETURN(Lorg/checkerframework/org/apache/bcel/generic/DRETURN;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DRETURN;

    .line 332
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 333
    return-void
.end method

.method public visitDSTORE(Lorg/checkerframework/org/apache/bcel/generic/DSTORE;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DSTORE;

    .line 337
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->locals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/DSTORE;->getIndex()I

    move-result v1

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->set(ILorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 338
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->locals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/DSTORE;->getIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->UNKNOWN:Lorg/checkerframework/org/apache/bcel/generic/Type;

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->set(ILorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 339
    return-void
.end method

.method public visitDSUB(Lorg/checkerframework/org/apache/bcel/generic/DSUB;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DSUB;

    .line 343
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 344
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 345
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 346
    return-void
.end method

.method public visitDUP(Lorg/checkerframework/org/apache/bcel/generic/DUP;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DUP;

    .line 350
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 351
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 352
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 353
    return-void
.end method

.method public visitDUP2(Lorg/checkerframework/org/apache/bcel/generic/DUP2;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DUP2;

    .line 384
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 385
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 386
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 387
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    goto :goto_0

    .line 390
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    .line 391
    .local v1, "u":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 392
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 393
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 394
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 396
    .end local v1    # "u":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :goto_0
    return-void
.end method

.method public visitDUP2_X1(Lorg/checkerframework/org/apache/bcel/generic/DUP2_X1;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DUP2_X1;

    .line 400
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 401
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 402
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    .line 403
    .local v1, "u":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 404
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 405
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 406
    .end local v1    # "u":Lorg/checkerframework/org/apache/bcel/generic/Type;
    goto :goto_0

    .line 408
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    .line 409
    .restart local v1    # "u":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    .line 410
    .local v2, "v":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 411
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 412
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 413
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 414
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 416
    .end local v1    # "u":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v2    # "v":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :goto_0
    return-void
.end method

.method public visitDUP2_X2(Lorg/checkerframework/org/apache/bcel/generic/DUP2_X2;)V
    .locals 5
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DUP2_X2;

    .line 420
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 421
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 422
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    .line 423
    .local v1, "u":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 424
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 425
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 426
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    goto :goto_0

    .line 428
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    .line 429
    .local v2, "v":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 430
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 431
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 432
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 434
    .end local v1    # "u":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v2    # "v":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :goto_0
    goto :goto_1

    .line 436
    :cond_1
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    .line 437
    .restart local v1    # "u":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    .line 438
    .local v3, "v":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 439
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 440
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 441
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 442
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 443
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    goto :goto_1

    .line 445
    :cond_2
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    .line 446
    .local v2, "w":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 447
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 448
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 449
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 450
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 451
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 454
    .end local v1    # "u":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v2    # "w":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v3    # "v":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :goto_1
    return-void
.end method

.method public visitDUP_X1(Lorg/checkerframework/org/apache/bcel/generic/DUP_X1;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DUP_X1;

    .line 357
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 358
    .local v0, "w1":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    .line 359
    .local v1, "w2":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 360
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 361
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 362
    return-void
.end method

.method public visitDUP_X2(Lorg/checkerframework/org/apache/bcel/generic/DUP_X2;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DUP_X2;

    .line 366
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 367
    .local v0, "w1":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    .line 368
    .local v1, "w2":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 369
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 370
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 371
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    goto :goto_0

    .line 374
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    .line 375
    .local v2, "w3":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 376
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 377
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 378
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 380
    .end local v2    # "w3":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :goto_0
    return-void
.end method

.method public visitF2D(Lorg/checkerframework/org/apache/bcel/generic/F2D;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/F2D;

    .line 458
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 459
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 460
    return-void
.end method

.method public visitF2I(Lorg/checkerframework/org/apache/bcel/generic/F2I;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/F2I;

    .line 464
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 465
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 466
    return-void
.end method

.method public visitF2L(Lorg/checkerframework/org/apache/bcel/generic/F2L;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/F2L;

    .line 470
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 471
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 472
    return-void
.end method

.method public visitFADD(Lorg/checkerframework/org/apache/bcel/generic/FADD;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FADD;

    .line 476
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 477
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 478
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 479
    return-void
.end method

.method public visitFALOAD(Lorg/checkerframework/org/apache/bcel/generic/FALOAD;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FALOAD;

    .line 483
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 484
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 485
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 486
    return-void
.end method

.method public visitFASTORE(Lorg/checkerframework/org/apache/bcel/generic/FASTORE;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FASTORE;

    .line 490
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 491
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 492
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 493
    return-void
.end method

.method public visitFCMPG(Lorg/checkerframework/org/apache/bcel/generic/FCMPG;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FCMPG;

    .line 497
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 498
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 499
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 500
    return-void
.end method

.method public visitFCMPL(Lorg/checkerframework/org/apache/bcel/generic/FCMPL;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FCMPL;

    .line 504
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 505
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 506
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 507
    return-void
.end method

.method public visitFCONST(Lorg/checkerframework/org/apache/bcel/generic/FCONST;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FCONST;

    .line 511
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 512
    return-void
.end method

.method public visitFDIV(Lorg/checkerframework/org/apache/bcel/generic/FDIV;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FDIV;

    .line 516
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 517
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 518
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 519
    return-void
.end method

.method public visitFLOAD(Lorg/checkerframework/org/apache/bcel/generic/FLOAD;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FLOAD;

    .line 523
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 524
    return-void
.end method

.method public visitFMUL(Lorg/checkerframework/org/apache/bcel/generic/FMUL;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FMUL;

    .line 528
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 529
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 530
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 531
    return-void
.end method

.method public visitFNEG(Lorg/checkerframework/org/apache/bcel/generic/FNEG;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FNEG;

    .line 535
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 536
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 537
    return-void
.end method

.method public visitFREM(Lorg/checkerframework/org/apache/bcel/generic/FREM;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FREM;

    .line 541
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 542
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 543
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 544
    return-void
.end method

.method public visitFRETURN(Lorg/checkerframework/org/apache/bcel/generic/FRETURN;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FRETURN;

    .line 548
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 549
    return-void
.end method

.method public visitFSTORE(Lorg/checkerframework/org/apache/bcel/generic/FSTORE;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FSTORE;

    .line 553
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->locals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/FSTORE;->getIndex()I

    move-result v1

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->set(ILorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 554
    return-void
.end method

.method public visitFSUB(Lorg/checkerframework/org/apache/bcel/generic/FSUB;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FSUB;

    .line 558
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 559
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 560
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 561
    return-void
.end method

.method public visitGETFIELD(Lorg/checkerframework/org/apache/bcel/generic/GETFIELD;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/GETFIELD;

    .line 565
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 566
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/GETFIELD;->getFieldType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 567
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 568
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 569
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 570
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 571
    :cond_0
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 573
    :cond_1
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 574
    return-void
.end method

.method public visitGETSTATIC(Lorg/checkerframework/org/apache/bcel/generic/GETSTATIC;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/GETSTATIC;

    .line 578
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/GETSTATIC;->getFieldType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 579
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 580
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 581
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 582
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 583
    :cond_0
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 585
    :cond_1
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 586
    return-void
.end method

.method public visitGOTO(Lorg/checkerframework/org/apache/bcel/generic/GOTO;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/GOTO;

    .line 591
    return-void
.end method

.method public visitGOTO_W(Lorg/checkerframework/org/apache/bcel/generic/GOTO_W;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/GOTO_W;

    .line 596
    return-void
.end method

.method public visitI2B(Lorg/checkerframework/org/apache/bcel/generic/I2B;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/I2B;

    .line 600
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 601
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 602
    return-void
.end method

.method public visitI2C(Lorg/checkerframework/org/apache/bcel/generic/I2C;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/I2C;

    .line 606
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 607
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 608
    return-void
.end method

.method public visitI2D(Lorg/checkerframework/org/apache/bcel/generic/I2D;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/I2D;

    .line 612
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 613
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 614
    return-void
.end method

.method public visitI2F(Lorg/checkerframework/org/apache/bcel/generic/I2F;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/I2F;

    .line 618
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 619
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 620
    return-void
.end method

.method public visitI2L(Lorg/checkerframework/org/apache/bcel/generic/I2L;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/I2L;

    .line 624
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 625
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 626
    return-void
.end method

.method public visitI2S(Lorg/checkerframework/org/apache/bcel/generic/I2S;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/I2S;

    .line 630
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 631
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 632
    return-void
.end method

.method public visitIADD(Lorg/checkerframework/org/apache/bcel/generic/IADD;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IADD;

    .line 636
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 637
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 638
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 639
    return-void
.end method

.method public visitIALOAD(Lorg/checkerframework/org/apache/bcel/generic/IALOAD;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IALOAD;

    .line 643
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 644
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 645
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 646
    return-void
.end method

.method public visitIAND(Lorg/checkerframework/org/apache/bcel/generic/IAND;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IAND;

    .line 650
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 651
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 652
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 653
    return-void
.end method

.method public visitIASTORE(Lorg/checkerframework/org/apache/bcel/generic/IASTORE;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IASTORE;

    .line 657
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 658
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 659
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 660
    return-void
.end method

.method public visitICONST(Lorg/checkerframework/org/apache/bcel/generic/ICONST;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ICONST;

    .line 664
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 665
    return-void
.end method

.method public visitIDIV(Lorg/checkerframework/org/apache/bcel/generic/IDIV;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IDIV;

    .line 669
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 670
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 671
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 672
    return-void
.end method

.method public visitIFEQ(Lorg/checkerframework/org/apache/bcel/generic/IFEQ;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IFEQ;

    .line 724
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 725
    return-void
.end method

.method public visitIFGE(Lorg/checkerframework/org/apache/bcel/generic/IFGE;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IFGE;

    .line 729
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 730
    return-void
.end method

.method public visitIFGT(Lorg/checkerframework/org/apache/bcel/generic/IFGT;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IFGT;

    .line 734
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 735
    return-void
.end method

.method public visitIFLE(Lorg/checkerframework/org/apache/bcel/generic/IFLE;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IFLE;

    .line 739
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 740
    return-void
.end method

.method public visitIFLT(Lorg/checkerframework/org/apache/bcel/generic/IFLT;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IFLT;

    .line 744
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 745
    return-void
.end method

.method public visitIFNE(Lorg/checkerframework/org/apache/bcel/generic/IFNE;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IFNE;

    .line 749
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 750
    return-void
.end method

.method public visitIFNONNULL(Lorg/checkerframework/org/apache/bcel/generic/IFNONNULL;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IFNONNULL;

    .line 754
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 755
    return-void
.end method

.method public visitIFNULL(Lorg/checkerframework/org/apache/bcel/generic/IFNULL;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IFNULL;

    .line 759
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 760
    return-void
.end method

.method public visitIF_ACMPEQ(Lorg/checkerframework/org/apache/bcel/generic/IF_ACMPEQ;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IF_ACMPEQ;

    .line 676
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 677
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 678
    return-void
.end method

.method public visitIF_ACMPNE(Lorg/checkerframework/org/apache/bcel/generic/IF_ACMPNE;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IF_ACMPNE;

    .line 682
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 683
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 684
    return-void
.end method

.method public visitIF_ICMPEQ(Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPEQ;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPEQ;

    .line 688
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 689
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 690
    return-void
.end method

.method public visitIF_ICMPGE(Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPGE;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPGE;

    .line 694
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 695
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 696
    return-void
.end method

.method public visitIF_ICMPGT(Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPGT;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPGT;

    .line 700
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 701
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 702
    return-void
.end method

.method public visitIF_ICMPLE(Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPLE;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPLE;

    .line 706
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 707
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 708
    return-void
.end method

.method public visitIF_ICMPLT(Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPLT;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPLT;

    .line 712
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 713
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 714
    return-void
.end method

.method public visitIF_ICMPNE(Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPNE;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPNE;

    .line 718
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 719
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 720
    return-void
.end method

.method public visitIINC(Lorg/checkerframework/org/apache/bcel/generic/IINC;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IINC;

    .line 765
    return-void
.end method

.method public visitILOAD(Lorg/checkerframework/org/apache/bcel/generic/ILOAD;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ILOAD;

    .line 769
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 770
    return-void
.end method

.method public visitIMUL(Lorg/checkerframework/org/apache/bcel/generic/IMUL;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IMUL;

    .line 774
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 775
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 776
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 777
    return-void
.end method

.method public visitINEG(Lorg/checkerframework/org/apache/bcel/generic/INEG;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/INEG;

    .line 781
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 782
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 783
    return-void
.end method

.method public visitINSTANCEOF(Lorg/checkerframework/org/apache/bcel/generic/INSTANCEOF;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/INSTANCEOF;

    .line 787
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 788
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 789
    return-void
.end method

.method public visitINVOKEDYNAMIC(Lorg/checkerframework/org/apache/bcel/generic/INVOKEDYNAMIC;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/INVOKEDYNAMIC;

    .line 796
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEDYNAMIC;->getArgumentTypes(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 797
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 796
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 803
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEDYNAMIC;->getReturnType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->VOID:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_3

    .line 804
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEDYNAMIC;->getReturnType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 805
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 806
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 807
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 808
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 809
    :cond_1
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 811
    :cond_2
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 813
    .end local v0    # "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_3
    return-void
.end method

.method public visitINVOKEINTERFACE(Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;

    .line 817
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 818
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;->getArgumentTypes(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 819
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 818
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 825
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;->getReturnType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->VOID:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_3

    .line 826
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;->getReturnType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 827
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 828
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 829
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 830
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 831
    :cond_1
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 833
    :cond_2
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 835
    .end local v0    # "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_3
    return-void
.end method

.method public visitINVOKESPECIAL(Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;

    .line 840
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;->getMethodName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 841
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;->getArgumentTypes(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    .line 842
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;
    invoke-static {}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getThis()Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 843
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->setThis(Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;)V

    .line 845
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->initializeObject(Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;)V

    .line 846
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->locals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->initializeObject(Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;)V

    .line 848
    .end local v0    # "t":Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;
    :cond_1
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 849
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;->getArgumentTypes(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 850
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 849
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 856
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;->getReturnType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->VOID:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_5

    .line 857
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;->getReturnType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 858
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 859
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 860
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 861
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 862
    :cond_3
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 864
    :cond_4
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 866
    .end local v0    # "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_5
    return-void
.end method

.method public visitINVOKESTATIC(Lorg/checkerframework/org/apache/bcel/generic/INVOKESTATIC;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/INVOKESTATIC;

    .line 870
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESTATIC;->getArgumentTypes(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 871
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 870
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 877
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESTATIC;->getReturnType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->VOID:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_3

    .line 878
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESTATIC;->getReturnType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 879
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 880
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 881
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 882
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 883
    :cond_1
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 885
    :cond_2
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 887
    .end local v0    # "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_3
    return-void
.end method

.method public visitINVOKEVIRTUAL(Lorg/checkerframework/org/apache/bcel/generic/INVOKEVIRTUAL;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/INVOKEVIRTUAL;

    .line 891
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 892
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEVIRTUAL;->getArgumentTypes(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 893
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 892
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 899
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEVIRTUAL;->getReturnType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->VOID:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_3

    .line 900
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEVIRTUAL;->getReturnType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 901
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 902
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 903
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 904
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 905
    :cond_1
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 907
    :cond_2
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 909
    .end local v0    # "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_3
    return-void
.end method

.method public visitIOR(Lorg/checkerframework/org/apache/bcel/generic/IOR;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IOR;

    .line 913
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 914
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 915
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 916
    return-void
.end method

.method public visitIREM(Lorg/checkerframework/org/apache/bcel/generic/IREM;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IREM;

    .line 920
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 921
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 922
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 923
    return-void
.end method

.method public visitIRETURN(Lorg/checkerframework/org/apache/bcel/generic/IRETURN;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IRETURN;

    .line 927
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 928
    return-void
.end method

.method public visitISHL(Lorg/checkerframework/org/apache/bcel/generic/ISHL;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ISHL;

    .line 932
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 933
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 934
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 935
    return-void
.end method

.method public visitISHR(Lorg/checkerframework/org/apache/bcel/generic/ISHR;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ISHR;

    .line 939
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 940
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 941
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 942
    return-void
.end method

.method public visitISTORE(Lorg/checkerframework/org/apache/bcel/generic/ISTORE;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ISTORE;

    .line 946
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->locals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ISTORE;->getIndex()I

    move-result v1

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->set(ILorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 947
    return-void
.end method

.method public visitISUB(Lorg/checkerframework/org/apache/bcel/generic/ISUB;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ISUB;

    .line 951
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 952
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 953
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 954
    return-void
.end method

.method public visitIUSHR(Lorg/checkerframework/org/apache/bcel/generic/IUSHR;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IUSHR;

    .line 958
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 959
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 960
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 961
    return-void
.end method

.method public visitIXOR(Lorg/checkerframework/org/apache/bcel/generic/IXOR;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IXOR;

    .line 965
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 966
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 967
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 968
    return-void
.end method

.method public visitJSR(Lorg/checkerframework/org/apache/bcel/generic/JSR;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/JSR;

    .line 973
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/JSR;->physicalSuccessor()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 975
    return-void
.end method

.method public visitJSR_W(Lorg/checkerframework/org/apache/bcel/generic/JSR_W;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/JSR_W;

    .line 980
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/JSR_W;->physicalSuccessor()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 981
    return-void
.end method

.method public visitL2D(Lorg/checkerframework/org/apache/bcel/generic/L2D;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/L2D;

    .line 986
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 987
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 988
    return-void
.end method

.method public visitL2F(Lorg/checkerframework/org/apache/bcel/generic/L2F;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/L2F;

    .line 992
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 993
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 994
    return-void
.end method

.method public visitL2I(Lorg/checkerframework/org/apache/bcel/generic/L2I;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/L2I;

    .line 998
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 999
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1000
    return-void
.end method

.method public visitLADD(Lorg/checkerframework/org/apache/bcel/generic/LADD;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LADD;

    .line 1004
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1005
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1006
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1007
    return-void
.end method

.method public visitLALOAD(Lorg/checkerframework/org/apache/bcel/generic/LALOAD;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LALOAD;

    .line 1011
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1012
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1013
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1014
    return-void
.end method

.method public visitLAND(Lorg/checkerframework/org/apache/bcel/generic/LAND;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LAND;

    .line 1018
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1019
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1020
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1021
    return-void
.end method

.method public visitLASTORE(Lorg/checkerframework/org/apache/bcel/generic/LASTORE;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LASTORE;

    .line 1025
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1026
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1027
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1028
    return-void
.end method

.method public visitLCMP(Lorg/checkerframework/org/apache/bcel/generic/LCMP;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LCMP;

    .line 1032
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1033
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1034
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1035
    return-void
.end method

.method public visitLCONST(Lorg/checkerframework/org/apache/bcel/generic/LCONST;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LCONST;

    .line 1039
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1040
    return-void
.end method

.method public visitLDC(Lorg/checkerframework/org/apache/bcel/generic/LDC;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LDC;

    .line 1044
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LDC;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 1045
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    if-eqz v1, :cond_0

    .line 1046
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1048
    :cond_0
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;

    if-eqz v1, :cond_1

    .line 1049
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1051
    :cond_1
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;

    if-eqz v1, :cond_2

    .line 1052
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->STRING:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1054
    :cond_2
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    if-eqz v1, :cond_3

    .line 1055
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->CLASS:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1057
    :cond_3
    return-void
.end method

.method public visitLDC2_W(Lorg/checkerframework/org/apache/bcel/generic/LDC2_W;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LDC2_W;

    .line 1077
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LDC2_W;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 1078
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;

    if-eqz v1, :cond_0

    .line 1079
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1081
    :cond_0
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;

    if-eqz v1, :cond_1

    .line 1082
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1084
    :cond_1
    return-void
.end method

.method public visitLDC_W(Lorg/checkerframework/org/apache/bcel/generic/LDC_W;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LDC_W;

    .line 1060
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LDC_W;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 1061
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    if-eqz v1, :cond_0

    .line 1062
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1064
    :cond_0
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;

    if-eqz v1, :cond_1

    .line 1065
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1067
    :cond_1
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;

    if-eqz v1, :cond_2

    .line 1068
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->STRING:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1070
    :cond_2
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    if-eqz v1, :cond_3

    .line 1071
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->CLASS:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1073
    :cond_3
    return-void
.end method

.method public visitLDIV(Lorg/checkerframework/org/apache/bcel/generic/LDIV;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LDIV;

    .line 1088
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1089
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1090
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1091
    return-void
.end method

.method public visitLLOAD(Lorg/checkerframework/org/apache/bcel/generic/LLOAD;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LLOAD;

    .line 1095
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->locals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LLOAD;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->get(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1096
    return-void
.end method

.method public visitLMUL(Lorg/checkerframework/org/apache/bcel/generic/LMUL;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LMUL;

    .line 1100
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1101
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1102
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1103
    return-void
.end method

.method public visitLNEG(Lorg/checkerframework/org/apache/bcel/generic/LNEG;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LNEG;

    .line 1107
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1108
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1109
    return-void
.end method

.method public visitLOOKUPSWITCH(Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;

    .line 1113
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1114
    return-void
.end method

.method public visitLOR(Lorg/checkerframework/org/apache/bcel/generic/LOR;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LOR;

    .line 1118
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1119
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1120
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1121
    return-void
.end method

.method public visitLREM(Lorg/checkerframework/org/apache/bcel/generic/LREM;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LREM;

    .line 1125
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1126
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1127
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1128
    return-void
.end method

.method public visitLRETURN(Lorg/checkerframework/org/apache/bcel/generic/LRETURN;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LRETURN;

    .line 1132
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1133
    return-void
.end method

.method public visitLSHL(Lorg/checkerframework/org/apache/bcel/generic/LSHL;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LSHL;

    .line 1137
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1138
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1139
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1140
    return-void
.end method

.method public visitLSHR(Lorg/checkerframework/org/apache/bcel/generic/LSHR;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LSHR;

    .line 1144
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1145
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1146
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1147
    return-void
.end method

.method public visitLSTORE(Lorg/checkerframework/org/apache/bcel/generic/LSTORE;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LSTORE;

    .line 1151
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->locals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LSTORE;->getIndex()I

    move-result v1

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->set(ILorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1152
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->locals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LSTORE;->getIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->UNKNOWN:Lorg/checkerframework/org/apache/bcel/generic/Type;

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->set(ILorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1153
    return-void
.end method

.method public visitLSUB(Lorg/checkerframework/org/apache/bcel/generic/LSUB;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LSUB;

    .line 1157
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1158
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1159
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1160
    return-void
.end method

.method public visitLUSHR(Lorg/checkerframework/org/apache/bcel/generic/LUSHR;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LUSHR;

    .line 1164
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1165
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1166
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1167
    return-void
.end method

.method public visitLXOR(Lorg/checkerframework/org/apache/bcel/generic/LXOR;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LXOR;

    .line 1171
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1172
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1173
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1174
    return-void
.end method

.method public visitMONITORENTER(Lorg/checkerframework/org/apache/bcel/generic/MONITORENTER;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/MONITORENTER;

    .line 1178
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1179
    return-void
.end method

.method public visitMONITOREXIT(Lorg/checkerframework/org/apache/bcel/generic/MONITOREXIT;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/MONITOREXIT;

    .line 1183
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1184
    return-void
.end method

.method public visitMULTIANEWARRAY(Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;

    .line 1188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;->getDimensions()S

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1189
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1191
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1192
    return-void
.end method

.method public visitNEW(Lorg/checkerframework/org/apache/bcel/generic/NEW;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/NEW;

    .line 1196
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/apache/bcel/generic/NEW;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-object v3, v2

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;-><init>(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)V

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1197
    return-void
.end method

.method public visitNEWARRAY(Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;

    .line 1201
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1202
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1203
    return-void
.end method

.method public visitNOP(Lorg/checkerframework/org/apache/bcel/generic/NOP;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/NOP;

    .line 1207
    return-void
.end method

.method public visitPOP(Lorg/checkerframework/org/apache/bcel/generic/POP;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/POP;

    .line 1211
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1212
    return-void
.end method

.method public visitPOP2(Lorg/checkerframework/org/apache/bcel/generic/POP2;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/POP2;

    .line 1216
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 1217
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1218
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1220
    :cond_0
    return-void
.end method

.method public visitPUTFIELD(Lorg/checkerframework/org/apache/bcel/generic/PUTFIELD;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/PUTFIELD;

    .line 1224
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1225
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1226
    return-void
.end method

.method public visitPUTSTATIC(Lorg/checkerframework/org/apache/bcel/generic/PUTSTATIC;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/PUTSTATIC;

    .line 1230
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1231
    return-void
.end method

.method public visitRET(Lorg/checkerframework/org/apache/bcel/generic/RET;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/RET;

    .line 1237
    return-void
.end method

.method public visitRETURN(Lorg/checkerframework/org/apache/bcel/generic/RETURN;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/RETURN;

    .line 1242
    return-void
.end method

.method public visitSALOAD(Lorg/checkerframework/org/apache/bcel/generic/SALOAD;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/SALOAD;

    .line 1246
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1247
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1248
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1249
    return-void
.end method

.method public visitSASTORE(Lorg/checkerframework/org/apache/bcel/generic/SASTORE;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/SASTORE;

    .line 1253
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1254
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1255
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1256
    return-void
.end method

.method public visitSIPUSH(Lorg/checkerframework/org/apache/bcel/generic/SIPUSH;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/SIPUSH;

    .line 1260
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1261
    return-void
.end method

.method public visitSWAP(Lorg/checkerframework/org/apache/bcel/generic/SWAP;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/SWAP;

    .line 1265
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 1266
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    .line 1267
    .local v1, "u":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1268
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1269
    return-void
.end method

.method public visitTABLESWITCH(Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;

    .line 1273
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1274
    return-void
.end method
