.class public Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;
.super Ljava/lang/Object;
.source "DescendingVisitor.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/classfile/Visitor;


# instance fields
.field private final clazz:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

.field private final stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 1
    .param p1, "clazz"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .param p2, "visitor"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    .line 77
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->clazz:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 78
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 79
    return-void
.end method


# virtual methods
.method public current()Ljava/lang/Object;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public predecessor()Ljava/lang/Object;
    .locals 1

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->predecessor(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public predecessor(I)Ljava/lang/Object;
    .locals 3
    .param p1, "level"    # I

    .line 53
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 54
    .local v0, "size":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    add-int/lit8 v2, p1, 0x2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 56
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public visit()V
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->clazz:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 87
    return-void
.end method

.method public visitAnnotation(Lorg/checkerframework/org/apache/bcel/classfile/Annotations;)V
    .locals 4
    .param p1, "annotation"    # Lorg/checkerframework/org/apache/bcel/classfile/Annotations;

    .line 116
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Annotations;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 118
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Annotations;->getAnnotationEntries()[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    move-result-object v0

    .line 119
    .local v0, "entries":[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 120
    .local v3, "entrie":Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    invoke-virtual {v3, p0}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 119
    .end local v3    # "entrie":Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 123
    return-void
.end method

.method public visitAnnotationDefault(Lorg/checkerframework/org/apache/bcel/classfile/AnnotationDefault;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/AnnotationDefault;

    .line 459
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationDefault;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 461
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 462
    return-void
.end method

.method public visitAnnotationEntry(Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;)V
    .locals 1
    .param p1, "annotationEntry"    # Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    .line 131
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 133
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public visitBootstrapMethods(Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;)V
    .locals 1
    .param p1, "bm"    # Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;

    .line 403
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 410
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 411
    return-void
.end method

.method public visitCode(Lorg/checkerframework/org/apache/bcel/classfile/Code;)V
    .locals 5
    .param p1, "code"    # Lorg/checkerframework/org/apache/bcel/classfile/Code;

    .line 179
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 181
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getExceptionTable()[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    move-result-object v0

    .line 182
    .local v0, "table":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 183
    .local v4, "element":Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    invoke-virtual {v4, p0}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 182
    .end local v4    # "element":Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v1

    .line 186
    .local v1, "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 187
    .local v4, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    invoke-virtual {v4, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 186
    .end local v4    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 189
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 190
    return-void
.end method

.method public visitCodeException(Lorg/checkerframework/org/apache/bcel/classfile/CodeException;)V
    .locals 1
    .param p1, "ce"    # Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    .line 195
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 197
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 198
    return-void
.end method

.method public visitConstantClass(Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;)V
    .locals 1
    .param p1, "constant"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    .line 279
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 281
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 282
    return-void
.end method

.method public visitConstantDouble(Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;)V
    .locals 1
    .param p1, "constant"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;

    .line 287
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 289
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 290
    return-void
.end method

.method public visitConstantFieldref(Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;)V
    .locals 1
    .param p1, "constant"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;

    .line 295
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 297
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 298
    return-void
.end method

.method public visitConstantFloat(Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;)V
    .locals 1
    .param p1, "constant"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;

    .line 303
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 305
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 306
    return-void
.end method

.method public visitConstantInteger(Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;)V
    .locals 1
    .param p1, "constant"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    .line 311
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 313
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 314
    return-void
.end method

.method public visitConstantInterfaceMethodref(Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;)V
    .locals 1
    .param p1, "constant"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;

    .line 320
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 322
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 323
    return-void
.end method

.method public visitConstantInvokeDynamic(Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;)V
    .locals 1
    .param p1, "constant"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;

    .line 332
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 334
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 335
    return-void
.end method

.method public visitConstantLong(Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;)V
    .locals 1
    .param p1, "constant"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;

    .line 340
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 342
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 343
    return-void
.end method

.method public visitConstantMethodHandle(Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;

    .line 519
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 521
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 522
    return-void
.end method

.method public visitConstantMethodType(Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodType;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodType;

    .line 511
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodType;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 513
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 514
    return-void
.end method

.method public visitConstantMethodref(Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;)V
    .locals 1
    .param p1, "constant"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;

    .line 348
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 350
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 351
    return-void
.end method

.method public visitConstantModule(Lorg/checkerframework/org/apache/bcel/classfile/ConstantModule;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantModule;

    .line 543
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantModule;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 545
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 546
    return-void
.end method

.method public visitConstantNameAndType(Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;)V
    .locals 1
    .param p1, "constant"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    .line 356
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 358
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 359
    return-void
.end method

.method public visitConstantPackage(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPackage;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPackage;

    .line 535
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPackage;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 537
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 538
    return-void
.end method

.method public visitConstantPool(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 3
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 263
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 265
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstantPool()[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 266
    .local v0, "constants":[Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 268
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 270
    aget-object v2, v0, v1

    invoke-virtual {v2, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 266
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 274
    return-void
.end method

.method public visitConstantString(Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;)V
    .locals 1
    .param p1, "constant"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;

    .line 364
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 366
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 367
    return-void
.end method

.method public visitConstantUtf8(Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;)V
    .locals 1
    .param p1, "constant"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 372
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 374
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 375
    return-void
.end method

.method public visitConstantValue(Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;)V
    .locals 1
    .param p1, "cv"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;

    .line 151
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 153
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 154
    return-void
.end method

.method public visitDeprecated(Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;)V
    .locals 1
    .param p1, "attribute"    # Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;

    .line 416
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 418
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 419
    return-void
.end method

.method public visitEnclosingMethod(Lorg/checkerframework/org/apache/bcel/classfile/EnclosingMethod;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/EnclosingMethod;

    .line 470
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/EnclosingMethod;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 472
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 473
    return-void
.end method

.method public visitExceptionTable(Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;)V
    .locals 1
    .param p1, "table"    # Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;

    .line 171
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 173
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 174
    return-void
.end method

.method public visitField(Lorg/checkerframework/org/apache/bcel/classfile/Field;)V
    .locals 4
    .param p1, "field"    # Lorg/checkerframework/org/apache/bcel/classfile/Field;

    .line 139
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 141
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v0

    .line 142
    .local v0, "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 143
    .local v3, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    invoke-virtual {v3, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 142
    .end local v3    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public visitInnerClass(Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;)V
    .locals 1
    .param p1, "inner"    # Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    .line 392
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 394
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 395
    return-void
.end method

.method public visitInnerClasses(Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;)V
    .locals 4
    .param p1, "ic"    # Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;

    .line 380
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 382
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->getInnerClasses()[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    move-result-object v0

    .line 383
    .local v0, "ics":[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 384
    .local v3, "ic2":Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;
    invoke-virtual {v3, p0}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 383
    .end local v3    # "ic2":Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 386
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 387
    return-void
.end method

.method public visitJavaClass(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V
    .locals 6
    .param p1, "_clazz"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 92
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 94
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getFields()[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    move-result-object v0

    .line 95
    .local v0, "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 96
    .local v4, "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    invoke-virtual {v4, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 95
    .end local v4    # "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v1

    .line 99
    .local v1, "methods":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    array-length v3, v1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 100
    .local v5, "method":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    invoke-virtual {v5, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 99
    .end local v5    # "method":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v3

    .line 103
    .local v3, "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 104
    .local v5, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    invoke-virtual {v5, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 103
    .end local v5    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 106
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 107
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public visitLineNumber(Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;)V
    .locals 1
    .param p1, "number"    # Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    .line 215
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 217
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 218
    return-void
.end method

.method public visitLineNumberTable(Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;)V
    .locals 4
    .param p1, "table"    # Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;

    .line 203
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 205
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->getLineNumberTable()[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    move-result-object v0

    .line 206
    .local v0, "numbers":[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 207
    .local v3, "number":Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;
    invoke-virtual {v3, p0}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 206
    .end local v3    # "number":Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 210
    return-void
.end method

.method public visitLocalVariable(Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;)V
    .locals 1
    .param p1, "var"    # Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    .line 255
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 257
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 258
    return-void
.end method

.method public visitLocalVariableTable(Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;)V
    .locals 4
    .param p1, "table"    # Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    .line 223
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 225
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->getLocalVariableTable()[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    move-result-object v0

    .line 226
    .local v0, "vars":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 227
    .local v3, "var":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    invoke-virtual {v3, p0}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 226
    .end local v3    # "var":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 230
    return-void
.end method

.method public visitLocalVariableTypeTable(Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;

    .line 481
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 483
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 484
    return-void
.end method

.method public visitMethod(Lorg/checkerframework/org/apache/bcel/classfile/Method;)V
    .locals 4
    .param p1, "method"    # Lorg/checkerframework/org/apache/bcel/classfile/Method;

    .line 159
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 161
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v0

    .line 162
    .local v0, "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 163
    .local v3, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    invoke-virtual {v3, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 162
    .end local v3    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 166
    return-void
.end method

.method public visitMethodParameters(Lorg/checkerframework/org/apache/bcel/classfile/MethodParameters;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/MethodParameters;

    .line 503
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameters;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 505
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 506
    return-void
.end method

.method public visitParameterAnnotation(Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;

    .line 492
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 494
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 495
    return-void
.end method

.method public visitParameterAnnotationEntry(Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;)V
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;

    .line 527
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 529
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 530
    return-void
.end method

.method public visitSignature(Lorg/checkerframework/org/apache/bcel/classfile/Signature;)V
    .locals 1
    .param p1, "attribute"    # Lorg/checkerframework/org/apache/bcel/classfile/Signature;

    .line 424
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Signature;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 426
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 427
    return-void
.end method

.method public visitSourceFile(Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;)V
    .locals 1
    .param p1, "attribute"    # Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;

    .line 432
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 434
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 435
    return-void
.end method

.method public visitStackMap(Lorg/checkerframework/org/apache/bcel/classfile/StackMap;)V
    .locals 4
    .param p1, "table"    # Lorg/checkerframework/org/apache/bcel/classfile/StackMap;

    .line 235
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 237
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->getStackMap()[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    move-result-object v0

    .line 238
    .local v0, "vars":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 239
    .local v3, "var":Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;
    invoke-virtual {v3, p0}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 238
    .end local v3    # "var":Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 242
    return-void
.end method

.method public visitStackMapEntry(Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;)V
    .locals 1
    .param p1, "var"    # Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    .line 247
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 249
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 250
    return-void
.end method

.method public visitSynthetic(Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;)V
    .locals 1
    .param p1, "attribute"    # Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;

    .line 440
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 442
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 443
    return-void
.end method

.method public visitUnknown(Lorg/checkerframework/org/apache/bcel/classfile/Unknown;)V
    .locals 1
    .param p1, "attribute"    # Lorg/checkerframework/org/apache/bcel/classfile/Unknown;

    .line 448
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visitor:Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 450
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 451
    return-void
.end method
