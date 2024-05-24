.class public Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;
.super Lorg/checkerframework/org/apache/bcel/classfile/EmptyVisitor;
.source "StringRepresentation.java"


# instance fields
.field private final n:Lorg/checkerframework/org/apache/bcel/classfile/Node;

.field private tostring:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/Node;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/org/apache/bcel/classfile/Node;

    .line 93
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/classfile/EmptyVisitor;-><init>()V

    .line 94
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->n:Lorg/checkerframework/org/apache/bcel/classfile/Node;

    .line 95
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Node;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 96
    return-void
.end method

.method private toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;
    .locals 4
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/Node;

    .line 123
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .local v0, "ret":Ljava/lang/String;
    goto :goto_0

    .line 126
    .end local v0    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "s":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 133
    .end local v1    # "s":Ljava/lang/String;
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 112
    return-object v0

    .line 109
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Please adapt \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' to deal with objects of class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->n:Lorg/checkerframework/org/apache/bcel/classfile/Node;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitAnnotation(Lorg/checkerframework/org/apache/bcel/classfile/Annotations;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/Annotations;

    .line 156
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public visitAnnotationDefault(Lorg/checkerframework/org/apache/bcel/classfile/AnnotationDefault;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/AnnotationDefault;

    .line 381
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public visitAnnotationEntry(Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    .line 373
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public visitBootstrapMethods(Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;

    .line 333
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public visitCode(Lorg/checkerframework/org/apache/bcel/classfile/Code;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/Code;

    .line 145
    const-string v0, "<CODE>"

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public visitCodeException(Lorg/checkerframework/org/apache/bcel/classfile/CodeException;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    .line 172
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public visitConstantClass(Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    .line 177
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public visitConstantDouble(Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;

    .line 182
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public visitConstantFieldref(Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;

    .line 187
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public visitConstantFloat(Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;

    .line 192
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public visitConstantInteger(Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    .line 197
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public visitConstantInterfaceMethodref(Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;

    .line 202
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public visitConstantInvokeDynamic(Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;

    .line 349
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public visitConstantLong(Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;

    .line 207
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public visitConstantMethodHandle(Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;

    .line 397
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public visitConstantMethodType(Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodType;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodType;

    .line 389
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public visitConstantMethodref(Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;

    .line 212
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public visitConstantNameAndType(Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    .line 217
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public visitConstantPool(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 222
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public visitConstantString(Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;

    .line 227
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public visitConstantUtf8(Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 232
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public visitConstantValue(Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;

    .line 237
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public visitDeprecated(Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;

    .line 242
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public visitEnclosingMethod(Lorg/checkerframework/org/apache/bcel/classfile/EnclosingMethod;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/EnclosingMethod;

    .line 325
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public visitExceptionTable(Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;

    .line 247
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public visitField(Lorg/checkerframework/org/apache/bcel/classfile/Field;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/Field;

    .line 252
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public visitInnerClass(Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    .line 257
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public visitInnerClasses(Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;

    .line 262
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public visitJavaClass(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 267
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public visitLineNumber(Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    .line 272
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public visitLineNumberTable(Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;)V
    .locals 2
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<LineNumberTable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public visitLocalVariable(Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    .line 282
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public visitLocalVariableTable(Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;)V
    .locals 2
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<LocalVariableTable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public visitLocalVariableTypeTable(Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;

    .line 167
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public visitMethod(Lorg/checkerframework/org/apache/bcel/classfile/Method;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/Method;

    .line 292
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public visitMethodParameters(Lorg/checkerframework/org/apache/bcel/classfile/MethodParameters;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/MethodParameters;

    .line 341
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public visitParameterAnnotation(Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;

    .line 365
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public visitParameterAnnotationEntry(Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;

    .line 405
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public visitSignature(Lorg/checkerframework/org/apache/bcel/classfile/Signature;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/Signature;

    .line 297
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public visitSourceFile(Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;

    .line 302
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public visitStackMap(Lorg/checkerframework/org/apache/bcel/classfile/StackMap;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/StackMap;

    .line 307
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public visitStackMapEntry(Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    .line 357
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public visitSynthetic(Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;

    .line 312
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public visitUnknown(Lorg/checkerframework/org/apache/bcel/classfile/Unknown;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/Unknown;

    .line 317
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    .line 318
    return-void
.end method
