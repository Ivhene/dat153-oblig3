.class public Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
.super Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;
.source "MethodGen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchStack;,
        Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchTarget;
    }
.end annotation


# static fields
.field private static bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;


# instance fields
.field private arg_names:[Ljava/lang/String;

.field private arg_types:[Lorg/checkerframework/org/apache/bcel/generic/Type;

.field private class_name:Ljava/lang/String;

.field private final code_attrs_vec:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/classfile/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private final exception_vec:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;",
            ">;"
        }
    .end annotation
.end field

.field private hasParameterAnnotations:Z

.field private haveUnpackedParameterAnnotations:Z

.field private il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

.field private final line_number_vec:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;",
            ">;"
        }
    .end annotation
.end field

.field private local_variable_type_table:Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;

.field private max_locals:I

.field private max_stack:I

.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/generic/MethodObserver;",
            ">;"
        }
    .end annotation
.end field

.field private param_annotations:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;",
            ">;"
        }
    .end annotation
.end field

.field private strip_attributes:Z

.field private final throws_vec:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final variable_vec:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$1;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$1;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    return-void
.end method

.method public constructor <init>(ILorg/checkerframework/org/apache/bcel/generic/Type;[Lorg/checkerframework/org/apache/bcel/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 16
    .param p1, "access_flags"    # I
    .param p2, "return_type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .param p3, "arg_types"    # [Lorg/checkerframework/org/apache/bcel/generic/Type;
    .param p4, "arg_names"    # [Ljava/lang/String;
    .param p5, "method_name"    # Ljava/lang/String;
    .param p6, "class_name"    # Ljava/lang/String;
    .param p7, "il"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    .param p8, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 133
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    invoke-direct/range {p0 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;-><init>(I)V

    .line 79
    const/4 v4, 0x0

    iput-object v4, v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->local_variable_type_table:Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;

    .line 80
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->variable_vec:Ljava/util/List;

    .line 81
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->line_number_vec:Ljava/util/List;

    .line 82
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->exception_vec:Ljava/util/List;

    .line 83
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->throws_vec:Ljava/util/List;

    .line 84
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->code_attrs_vec:Ljava/util/List;

    .line 87
    const/4 v4, 0x0

    iput-boolean v4, v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->hasParameterAnnotations:Z

    .line 88
    iput-boolean v4, v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->haveUnpackedParameterAnnotations:Z

    .line 134
    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setType(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 135
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setArgumentTypes([Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 136
    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setArgumentNames([Ljava/lang/String;)V

    .line 137
    move-object/from16 v6, p5

    invoke-virtual {v0, v6}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setName(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0, v3}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setClassName(Ljava/lang/String;)V

    .line 139
    move-object/from16 v7, p7

    invoke-virtual {v0, v7}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setInstructionList(Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)V

    .line 140
    move-object/from16 v8, p8

    invoke-virtual {v0, v8}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setConstantPool(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->isAbstract()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->isNative()Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    move v9, v4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v9, 0x1

    .line 142
    .local v9, "abstract_":Z
    :goto_1
    const/4 v10, 0x0

    .line 143
    .local v10, "start":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    const/4 v11, 0x0

    .line 144
    .local v11, "end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    if-nez v9, :cond_2

    .line 145
    invoke-virtual/range {p7 .. p7}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v10

    .line 149
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->isStatic()Z

    move-result v12

    if-nez v12, :cond_2

    if-eqz v3, :cond_2

    .line 150
    const-string v12, "this"

    invoke-static/range {p6 .. p6}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v13

    invoke-virtual {v0, v12, v13, v10, v11}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addLocalVariable(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    .line 153
    :cond_2
    if-eqz v1, :cond_8

    .line 154
    array-length v12, v1

    .line 155
    .local v12, "size":I
    array-length v13, v1

    :goto_2
    if-ge v4, v13, :cond_4

    aget-object v14, v1, v4

    .line 156
    .local v14, "arg_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v15, Lorg/checkerframework/org/apache/bcel/generic/Type;->VOID:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v15, v14, :cond_3

    .line 155
    .end local v14    # "arg_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 157
    .restart local v14    # "arg_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_3
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    const-string v13, "\'void\' is an illegal argument type for a method"

    invoke-direct {v4, v13}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 160
    .end local v14    # "arg_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_4
    if-eqz v2, :cond_6

    .line 161
    array-length v4, v2

    if-ne v12, v4, :cond_5

    goto :goto_4

    .line 162
    :cond_5
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Mismatch in argument array lengths: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " vs. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 166
    :cond_6
    new-array v2, v12, [Ljava/lang/String;

    .line 167
    .end local p4    # "arg_names":[Ljava/lang/String;
    .local v2, "arg_names":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v12, :cond_7

    .line 168
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "arg"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v2, v4

    .line 167
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 170
    .end local v4    # "i":I
    :cond_7
    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setArgumentNames([Ljava/lang/String;)V

    .line 172
    :goto_4
    if-nez v9, :cond_8

    .line 173
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    if-ge v4, v12, :cond_8

    .line 174
    aget-object v13, v2, v4

    aget-object v14, v1, v4

    invoke-virtual {v0, v13, v14, v10, v11}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addLocalVariable(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 178
    .end local v4    # "i":I
    .end local v12    # "size":I
    :cond_8
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/Method;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 19
    .param p1, "m"    # Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .param p2, "class_name"    # Ljava/lang/String;
    .param p3, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 189
    move-object/from16 v9, p0

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getAccessFlags()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getReturnType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    .line 190
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getSignature()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    const/4 v4, 0x0

    .line 191
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 192
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getAccessFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x500

    if-nez v0, :cond_0

    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    .line 193
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getCode()Lorg/checkerframework/org/apache/bcel/classfile/Code;

    move-result-object v6

    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getCode()[B

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v7, v0

    .line 189
    move-object/from16 v0, p0

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/Type;[Lorg/checkerframework/org/apache/bcel/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 195
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v0

    .line 196
    .local v0, "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_10

    aget-object v4, v0, v3

    .line 197
    .local v4, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    move-object v5, v4

    .line 198
    .local v5, "a":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    instance-of v6, v5, Lorg/checkerframework/org/apache/bcel/classfile/Code;

    if-eqz v6, :cond_b

    .line 199
    move-object v6, v5

    check-cast v6, Lorg/checkerframework/org/apache/bcel/classfile/Code;

    .line 200
    .local v6, "c":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getMaxStack()I

    move-result v7

    invoke-virtual {v9, v7}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setMaxStack(I)V

    .line 201
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getMaxLocals()I

    move-result v7

    invoke-virtual {v9, v7}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setMaxLocals(I)V

    .line 202
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getExceptionTable()[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    move-result-object v7

    .line 203
    .local v7, "ces":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    if-eqz v7, :cond_4

    .line 204
    array-length v8, v7

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v8, :cond_3

    aget-object v11, v7, v10

    .line 205
    .local v11, "ce":Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->getCatchType()I

    move-result v12

    .line 206
    .local v12, "type":I
    const/4 v13, 0x0

    .line 207
    .local v13, "c_type":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    if-lez v12, :cond_1

    .line 208
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v14

    const/4 v15, 0x7

    invoke-virtual {v14, v12, v15}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object v14

    .line 210
    .local v14, "cen":Ljava/lang/String;
    invoke-static {v14}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v13

    .line 212
    .end local v14    # "cen":Ljava/lang/String;
    :cond_1
    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->getEndPC()I

    move-result v14

    .line 213
    .local v14, "end_pc":I
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getCode()Lorg/checkerframework/org/apache/bcel/classfile/Code;

    move-result-object v15

    invoke-virtual {v15}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getCode()[B

    move-result-object v15

    array-length v15, v15

    .line 215
    .local v15, "length":I
    if-ne v15, v14, :cond_2

    .line 216
    iget-object v2, v9, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getEnd()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    .local v2, "end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    goto :goto_3

    .line 218
    .end local v2    # "end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_2
    iget-object v2, v9, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-virtual {v2, v14}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->findHandle(I)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    .line 219
    .restart local v2    # "end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPrev()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    .line 221
    :goto_3
    move-object/from16 v16, v0

    .end local v0    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .local v16, "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    iget-object v0, v9, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    move/from16 v17, v1

    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->getStartPC()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->findHandle(I)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    iget-object v1, v9, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    .line 222
    move-object/from16 v18, v4

    .end local v4    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .local v18, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->getHandlerPC()I

    move-result v4

    .line 221
    invoke-virtual {v1, v4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->findHandle(I)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    invoke-virtual {v9, v0, v2, v1, v13}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addExceptionHandler(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;

    .line 204
    .end local v2    # "end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v11    # "ce":Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    .end local v12    # "type":I
    .end local v13    # "c_type":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .end local v14    # "end_pc":I
    .end local v15    # "length":I
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v4, v18

    goto :goto_2

    .end local v16    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v18    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v0    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v4    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_3
    move-object/from16 v16, v0

    move/from16 v17, v1

    move-object/from16 v18, v4

    .end local v0    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v4    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v16    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v18    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    goto :goto_4

    .line 203
    .end local v16    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v18    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v0    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v4    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_4
    move-object/from16 v16, v0

    move/from16 v17, v1

    move-object/from16 v18, v4

    .line 225
    .end local v0    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v4    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v16    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v18    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :goto_4
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v0

    .line 226
    .local v0, "c_attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_a

    aget-object v4, v0, v2

    .line 227
    .local v4, "c_attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    move-object v5, v4

    .line 228
    instance-of v8, v5, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;

    if-eqz v8, :cond_7

    .line 229
    move-object v8, v5

    check-cast v8, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;

    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->getLineNumberTable()[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    move-result-object v8

    .line 230
    .local v8, "ln":[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;
    array-length v10, v8

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v10, :cond_6

    aget-object v12, v8, v11

    .line 231
    .local v12, "l":Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;
    iget-object v13, v9, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->getStartPC()I

    move-result v14

    invoke-virtual {v13, v14}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->findHandle(I)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v13

    .line 232
    .local v13, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    if-eqz v13, :cond_5

    .line 233
    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->getLineNumber()I

    move-result v14

    invoke-virtual {v9, v13, v14}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addLineNumber(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;I)Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;

    .line 230
    .end local v12    # "l":Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;
    .end local v13    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 236
    .end local v8    # "ln":[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;
    :cond_6
    goto :goto_7

    :cond_7
    instance-of v8, v5, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    if-eqz v8, :cond_8

    .line 237
    move-object v8, v5

    check-cast v8, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    invoke-direct {v9, v8}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->updateLocalVariableTable(Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;)V

    goto :goto_7

    .line 238
    :cond_8
    instance-of v8, v5, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;

    if-eqz v8, :cond_9

    .line 239
    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;

    iput-object v8, v9, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->local_variable_type_table:Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;

    goto :goto_7

    .line 241
    :cond_9
    invoke-virtual {v9, v5}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addCodeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    .line 226
    .end local v4    # "c_attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 244
    .end local v0    # "c_attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v6    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    .end local v7    # "ces":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    :cond_a
    move-object/from16 v8, p3

    const/4 v10, 0x0

    goto :goto_a

    .end local v16    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v18    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .local v0, "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .local v4, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_b
    move-object/from16 v16, v0

    move/from16 v17, v1

    move-object/from16 v18, v4

    .end local v0    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v4    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v16    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v18    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    instance-of v0, v5, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;

    if-eqz v0, :cond_d

    .line 245
    move-object v0, v5

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->getExceptionNames()[Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "names":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_c

    aget-object v4, v0, v2

    .line 247
    .local v4, "name2":Ljava/lang/String;
    invoke-virtual {v9, v4}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addException(Ljava/lang/String;)V

    .line 246
    .end local v4    # "name2":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 249
    .end local v0    # "names":[Ljava/lang/String;
    :cond_c
    move-object/from16 v8, p3

    const/4 v10, 0x0

    goto :goto_a

    :cond_d
    instance-of v0, v5, Lorg/checkerframework/org/apache/bcel/classfile/Annotations;

    if-eqz v0, :cond_f

    .line 250
    move-object v0, v5

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/Annotations;

    .line 251
    .local v0, "runtimeAnnotations":Lorg/checkerframework/org/apache/bcel/classfile/Annotations;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Annotations;->getAnnotationEntries()[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    move-result-object v1

    .line 252
    .local v1, "aes":[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    array-length v2, v1

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v2, :cond_e

    aget-object v6, v1, v4

    .line 253
    .local v6, "element":Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    new-instance v7, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    move-object/from16 v8, p3

    const/4 v10, 0x0

    invoke-direct {v7, v6, v8, v10}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)V

    invoke-virtual {v9, v7}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addAnnotationEntry(Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;)V

    .line 252
    .end local v6    # "element":Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_e
    move-object/from16 v8, p3

    const/4 v10, 0x0

    .line 255
    .end local v0    # "runtimeAnnotations":Lorg/checkerframework/org/apache/bcel/classfile/Annotations;
    .end local v1    # "aes":[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    goto :goto_a

    .line 256
    :cond_f
    move-object/from16 v8, p3

    const/4 v10, 0x0

    invoke-virtual {v9, v5}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    .line 196
    .end local v5    # "a":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v18    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :goto_a
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_1

    .line 259
    .end local v16    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .local v0, "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_10
    return-void
.end method

.method private adjustLocalVariableTypeTable(Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;)V
    .locals 11
    .param p1, "lvt"    # Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    .line 748
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->getLocalVariableTable()[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    move-result-object v0

    .line 749
    .local v0, "lv":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->local_variable_type_table:Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;->getLocalVariableTypeTable()[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    move-result-object v1

    .line 751
    .local v1, "lvg":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 752
    .local v5, "element":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    array-length v6, v0

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v0, v7

    .line 753
    .local v8, "l":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getIndex()I

    move-result v9

    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getOrigIndex()I

    move-result v10

    if-ne v9, v10, :cond_0

    .line 754
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->setLength(I)V

    .line 755
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getStartPC()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->setStartPC(I)V

    .line 756
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->setIndex(I)V

    .line 757
    goto :goto_2

    .line 752
    .end local v8    # "l":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 751
    .end local v5    # "element":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 761
    :cond_2
    return-void
.end method

.method private ensureExistingParameterAnnotationsUnpacked()V
    .locals 12

    .line 1167
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->haveUnpackedParameterAnnotations:Z

    if-eqz v0, :cond_0

    .line 1168
    return-void

    .line 1171
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v0

    .line 1172
    .local v0, "attrs":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    const/4 v1, 0x0

    .line 1173
    .local v1, "paramAnnVisAttr":Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;
    const/4 v2, 0x0

    .line 1174
    .local v2, "paramAnnInvisAttr":Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_4

    aget-object v6, v0, v4

    .line 1175
    .local v6, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    instance-of v7, v6, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;

    if-eqz v7, :cond_3

    .line 1178
    iget-boolean v7, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->hasParameterAnnotations:Z

    if-nez v7, :cond_1

    .line 1181
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->arg_types:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    array-length v7, v7

    new-array v7, v7, [Ljava/util/List;

    .line 1182
    .local v7, "parmList":[Ljava/util/List;, "[Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;>;"
    iput-object v7, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->param_annotations:[Ljava/util/List;

    .line 1183
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    iget-object v9, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->arg_types:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    array-length v9, v9

    if-ge v8, v9, :cond_1

    .line 1184
    iget-object v9, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->param_annotations:[Ljava/util/List;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    aput-object v10, v9, v8

    .line 1183
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1187
    .end local v7    # "parmList":[Ljava/util/List;, "[Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;>;"
    .end local v8    # "j":I
    :cond_1
    iput-boolean v5, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->hasParameterAnnotations:Z

    .line 1188
    move-object v5, v6

    check-cast v5, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;

    .line 1189
    .local v5, "rpa":Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;
    instance-of v7, v5, Lorg/checkerframework/org/apache/bcel/classfile/RuntimeVisibleParameterAnnotations;

    if-eqz v7, :cond_2

    .line 1190
    move-object v1, v5

    goto :goto_2

    .line 1192
    :cond_2
    move-object v2, v5

    .line 1194
    :goto_2
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;->getParameterAnnotationEntries()[Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;

    move-result-object v7

    .line 1195
    .local v7, "parameterAnnotationEntries":[Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_3
    array-length v9, v7

    if-ge v8, v9, :cond_3

    .line 1198
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;->getParameterAnnotationEntries()[Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;

    move-result-object v9

    aget-object v9, v9, v8

    .line 1200
    .local v9, "immutableArray":Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;
    invoke-virtual {v9}, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;->getAnnotationEntries()[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    move-result-object v10

    invoke-direct {p0, v10}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->makeMutableVersion([Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;)Ljava/util/List;

    move-result-object v10

    .line 1202
    .local v10, "mutable":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;>;"
    iget-object v11, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->param_annotations:[Ljava/util/List;

    aget-object v11, v11, v8

    invoke-interface {v11, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1195
    .end local v9    # "immutableArray":Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;
    .end local v10    # "mutable":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;>;"
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1174
    .end local v5    # "rpa":Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;
    .end local v6    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v7    # "parameterAnnotationEntries":[Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;
    .end local v8    # "j":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1206
    :cond_4
    if-eqz v1, :cond_5

    .line 1207
    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->removeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    .line 1209
    :cond_5
    if-eqz v2, :cond_6

    .line 1210
    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->removeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    .line 1212
    :cond_6
    iput-boolean v5, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->haveUnpackedParameterAnnotations:Z

    .line 1213
    return-void
.end method

.method private getCodeExceptions()[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    .locals 5

    .line 509
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->exception_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 510
    .local v0, "size":I
    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    .line 511
    .local v1, "c_exc":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 512
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->exception_vec:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;

    .line 513
    .local v3, "c":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getCodeException(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    move-result-object v4

    aput-object v4, v1, v2

    .line 511
    .end local v3    # "c":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 515
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static getComparator()Lorg/checkerframework/org/apache/bcel/util/BCELComparator;
    .locals 1

    .line 1256
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    return-object v0
.end method

.method private getExceptionTable(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;
    .locals 6
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 559
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->throws_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 560
    .local v0, "size":I
    new-array v1, v0, [I

    .line 561
    .local v1, "ex":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 562
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->throws_vec:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 561
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 564
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;

    const-string v3, "Exceptions"

    invoke-virtual {p1, v3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v5

    invoke-direct {v2, v3, v4, v1, v5}, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;-><init>(II[ILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v2
.end method

.method public static getMaxStack(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;[Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;)I
    .locals 16
    .param p0, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p1, "il"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    .param p2, "et"    # [Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;

    .line 998
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchStack;

    invoke-direct {v2}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchStack;-><init>()V

    .line 1004
    .local v2, "branchTargets":Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchStack;
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 1005
    .local v6, "element":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getHandlerPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v7

    .line 1006
    .local v7, "handler_pc":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    if-eqz v7, :cond_0

    .line 1007
    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchStack;->push(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;I)V

    .line 1004
    .end local v6    # "element":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    .end local v7    # "handler_pc":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1010
    :cond_1
    const/4 v3, 0x0

    .line 1011
    .local v3, "stackDepth":I
    const/4 v5, 0x0

    .line 1012
    .local v5, "maxStackDepth":I
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v6

    .line 1013
    .local v6, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_1
    if-eqz v6, :cond_d

    .line 1014
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v7

    .line 1015
    .local v7, "instruction":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getOpcode()S

    move-result v8

    .line 1016
    .local v8, "opcode":S
    invoke-virtual {v7, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->produceStack(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)I

    move-result v9

    invoke-virtual {v7, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->consumeStack(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)I

    move-result v10

    sub-int/2addr v9, v10

    .line 1017
    .local v9, "delta":I
    add-int/2addr v3, v9

    .line 1018
    if-le v3, v5, :cond_2

    .line 1019
    move v5, v3

    .line 1022
    :cond_2
    instance-of v10, v7, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    if-eqz v10, :cond_8

    .line 1023
    move-object v10, v7

    check-cast v10, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    .line 1024
    .local v10, "branch":Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;
    instance-of v11, v7, Lorg/checkerframework/org/apache/bcel/generic/Select;

    if-eqz v11, :cond_4

    .line 1026
    move-object v11, v10

    check-cast v11, Lorg/checkerframework/org/apache/bcel/generic/Select;

    .line 1027
    .local v11, "select":Lorg/checkerframework/org/apache/bcel/generic/Select;
    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/generic/Select;->getTargets()[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v12

    .line 1028
    .local v12, "targets":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    array-length v13, v12

    move v14, v4

    :goto_2
    if-ge v14, v13, :cond_3

    aget-object v15, v12, v14

    .line 1029
    .local v15, "target":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual {v2, v15, v3}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchStack;->push(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;I)V

    .line 1028
    .end local v15    # "target":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1032
    :cond_3
    const/4 v6, 0x0

    .end local v11    # "select":Lorg/checkerframework/org/apache/bcel/generic/Select;
    .end local v12    # "targets":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    goto :goto_3

    .line 1033
    :cond_4
    instance-of v11, v10, Lorg/checkerframework/org/apache/bcel/generic/IfInstruction;

    if-nez v11, :cond_7

    .line 1036
    const/16 v11, 0xa8

    if-eq v8, v11, :cond_5

    const/16 v11, 0xc9

    if-ne v8, v11, :cond_6

    .line 1037
    :cond_5
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v11

    add-int/lit8 v12, v3, -0x1

    invoke-virtual {v2, v11, v12}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchStack;->push(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;I)V

    .line 1039
    :cond_6
    const/4 v6, 0x0

    goto :goto_4

    .line 1033
    :cond_7
    :goto_3
    nop

    .line 1044
    :goto_4
    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v11

    invoke-virtual {v2, v11, v3}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchStack;->push(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;I)V

    .line 1045
    .end local v10    # "branch":Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;
    goto :goto_5

    .line 1047
    :cond_8
    const/16 v10, 0xbf

    if-eq v8, v10, :cond_9

    const/16 v10, 0xa9

    if-eq v8, v10, :cond_9

    const/16 v10, 0xac

    if-lt v8, v10, :cond_a

    const/16 v10, 0xb1

    if-gt v8, v10, :cond_a

    .line 1049
    :cond_9
    const/4 v6, 0x0

    .line 1053
    :cond_a
    :goto_5
    if-eqz v6, :cond_b

    .line 1054
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v6

    .line 1057
    :cond_b
    if-nez v6, :cond_c

    .line 1058
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchTarget;

    move-result-object v10

    .line 1059
    .local v10, "bt":Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchTarget;
    if-eqz v10, :cond_c

    .line 1060
    iget-object v6, v10, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchTarget;->target:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 1061
    iget v3, v10, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchTarget;->stackDepth:I

    .line 1064
    .end local v7    # "instruction":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .end local v8    # "opcode":S
    .end local v9    # "delta":I
    .end local v10    # "bt":Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchTarget;
    :cond_c
    goto :goto_1

    .line 1065
    :cond_d
    return v5
.end method

.method private makeMutableVersion([Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;)Ljava/util/List;
    .locals 7
    .param p1, "mutableArray"    # [Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;",
            ">;"
        }
    .end annotation

    .line 1217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1218
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 1219
    .local v4, "element":Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    new-instance v5, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v6

    invoke-direct {v5, v4, v6, v2}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    .end local v4    # "element":Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1222
    :cond_0
    return-object v0
.end method

.method public static setComparator(Lorg/checkerframework/org/apache/bcel/util/BCELComparator;)V
    .locals 0
    .param p0, "comparator"    # Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    .line 1264
    sput-object p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    .line 1265
    return-void
.end method

.method private updateLocalVariableTable(Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;)V
    .locals 14
    .param p1, "a"    # Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    .line 730
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->getLocalVariableTable()[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    move-result-object v0

    .line 731
    .local v0, "lv":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->removeLocalVariables()V

    .line 732
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 733
    .local v3, "l":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getStartPC()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->findHandle(I)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v4

    .line 734
    .local v4, "start":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getStartPC()I

    move-result v6

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getLength()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->findHandle(I)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v5

    .line 736
    .local v5, "end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    if-nez v4, :cond_0

    .line 737
    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v4

    .line 742
    :cond_0
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v9

    .line 743
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getIndex()I

    move-result v10

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getOrigIndex()I

    move-result v13

    .line 742
    move-object v7, p0

    move-object v11, v4

    move-object v12, v5

    invoke-virtual/range {v7 .. v13}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addLocalVariable(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;ILorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;I)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    .line 732
    .end local v3    # "l":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .end local v4    # "start":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v5    # "end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 745
    :cond_1
    return-void
.end method


# virtual methods
.method public addAnnotationsAsAttribute(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 4
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 620
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getAnnotationEntries()[Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->getAnnotationAttributes(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;[Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;)[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v0

    .line 621
    .local v0, "attrs":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 622
    .local v3, "attr":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    invoke-virtual {p0, v3}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    .line 621
    .end local v3    # "attr":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 624
    :cond_0
    return-void
.end method

.method public addCodeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V
    .locals 1
    .param p1, "a"    # Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 578
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->code_attrs_vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    return-void
.end method

.method public addException(Ljava/lang/String;)V
    .locals 1
    .param p1, "class_name"    # Ljava/lang/String;

    .line 525
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->throws_vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    return-void
.end method

.method public addExceptionHandler(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    .locals 2
    .param p1, "start_pc"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "end_pc"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p3, "handler_pc"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p4, "catch_type"    # Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 470
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 473
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)V

    .line 474
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->exception_vec:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    return-object v0

    .line 471
    .end local v0    # "c":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    const-string v1, "Exception handler target is null instruction"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addLineNumber(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;I)Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;
    .locals 2
    .param p1, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "src_line"    # I

    .line 411
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;

    invoke-direct {v0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;I)V

    .line 412
    .local v0, "l":Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->line_number_vec:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    return-object v0
.end method

.method public addLocalVariable(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;ILorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .param p3, "slot"    # I
    .param p4, "start"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p5, "end"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 310
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addLocalVariable(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;ILorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;I)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    move-result-object v0

    return-object v0
.end method

.method public addLocalVariable(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;ILorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;I)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .param p3, "slot"    # I
    .param p4, "start"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p5, "end"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p6, "orig_index"    # I

    .line 276
    move-object v0, p0

    invoke-virtual {p2}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType()B

    move-result v8

    .line 277
    .local v8, "t":B
    const/16 v1, 0x10

    if-eq v8, v1, :cond_2

    .line 278
    invoke-virtual {p2}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v9

    .line 279
    .local v9, "add":I
    add-int v1, p3, v9

    iget v2, v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->max_locals:I

    if-le v1, v2, :cond_0

    .line 280
    add-int v1, p3, v9

    iput v1, v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->max_locals:I

    .line 282
    :cond_0
    new-instance v10, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    move-object v1, v10

    move v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;-><init>(ILjava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;I)V

    .line 284
    .local v1, "l":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    iget-object v2, v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->variable_vec:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    .local v3, "i":I
    if-ltz v2, :cond_1

    .line 285
    iget-object v2, v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->variable_vec:Ljava/util/List;

    invoke-interface {v2, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 287
    :cond_1
    iget-object v2, v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->variable_vec:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :goto_0
    return-object v1

    .line 291
    .end local v1    # "l":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    .end local v3    # "i":I
    .end local v9    # "add":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " as type for local variable"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addLocalVariable(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .param p3, "start"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p4, "end"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 327
    iget v3, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->max_locals:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addLocalVariable(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;ILorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    move-result-object v0

    return-object v0
.end method

.method public addObserver(Lorg/checkerframework/org/apache/bcel/generic/MethodObserver;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/MethodObserver;

    .line 1074
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->observers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1075
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->observers:Ljava/util/List;

    .line 1077
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1078
    return-void
.end method

.method public addParameterAnnotation(ILorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "annotation"    # Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    .line 1228
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->ensureExistingParameterAnnotationsUnpacked()V

    .line 1229
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->hasParameterAnnotations:Z

    if-nez v0, :cond_0

    .line 1232
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->arg_types:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/List;

    .line 1233
    .local v0, "parmList":[Ljava/util/List;, "[Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;>;"
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->param_annotations:[Ljava/util/List;

    .line 1234
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->hasParameterAnnotations:Z

    .line 1236
    .end local v0    # "parmList":[Ljava/util/List;, "[Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;>;"
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->param_annotations:[Ljava/util/List;

    aget-object v0, v0, p1

    .line 1237
    .local v0, "existingAnnotations":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;>;"
    if-eqz v0, :cond_1

    .line 1239
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1243
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1244
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1245
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->param_annotations:[Ljava/util/List;

    aput-object v1, v2, p1

    .line 1247
    .end local v1    # "l":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;>;"
    :goto_0
    return-void
.end method

.method public addParameterAnnotationsAsAttribute(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 4
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 630
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->hasParameterAnnotations:Z

    if-nez v0, :cond_0

    .line 631
    return-void

    .line 633
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->param_annotations:[Ljava/util/List;

    invoke-static {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->getParameterAnnotationAttributes(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;[Ljava/util/List;)[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v0

    .line 634
    .local v0, "attrs":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    if-eqz v0, :cond_1

    .line 635
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 636
    .local v3, "attr":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    invoke-virtual {p0, v3}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    .line 635
    .end local v3    # "attr":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 639
    :cond_1
    return-void
.end method

.method public copy(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    .locals 4
    .param p1, "class_name"    # Ljava/lang/String;
    .param p2, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 1134
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getMethod()Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v0

    .line 1135
    .local v0, "m":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/Method;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 1136
    .local v1, "mg":Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v2

    if-eq v2, p2, :cond_0

    .line 1137
    invoke-virtual {v1, p2}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setConstantPool(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 1138
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    move-result-object v2

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->replaceConstantPool(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 1140
    :cond_0
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1277
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    invoke-interface {v0, p0, p1}, Lorg/checkerframework/org/apache/bcel/util/BCELComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAnnotationsOnParameter(I)Ljava/util/List;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;",
            ">;"
        }
    .end annotation

    .line 1150
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->ensureExistingParameterAnnotationsUnpacked()V

    .line 1151
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->hasParameterAnnotations:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->arg_types:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    array-length v0, v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1154
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->param_annotations:[Ljava/util/List;

    aget-object v0, v0, p1

    return-object v0

    .line 1152
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getArgumentName(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .line 876
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->arg_names:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getArgumentNames()[Ljava/lang/String;
    .locals 1

    .line 866
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->arg_names:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getArgumentType(I)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1
    .param p1, "i"    # I

    .line 856
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->arg_types:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getArgumentTypes()[Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1

    .line 846
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->arg_types:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    invoke-virtual {v0}, [Lorg/checkerframework/org/apache/bcel/generic/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/org/apache/bcel/generic/Type;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 821
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->class_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 611
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->code_attrs_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 612
    .local v0, "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->code_attrs_vec:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 613
    return-object v0
.end method

.method public getExceptionHandlers()[Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    .locals 2

    .line 499
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->exception_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;

    .line 500
    .local v0, "cg":[Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->exception_vec:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 501
    return-object v0
.end method

.method public getExceptions()[Ljava/lang/String;
    .locals 2

    .line 549
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->throws_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 550
    .local v0, "e":[Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->throws_vec:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 551
    return-object v0
.end method

.method public getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    .locals 1

    .line 881
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    return-object v0
.end method

.method public getLineNumberTable(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    .locals 6
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 447
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->line_number_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 448
    .local v0, "size":I
    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    .line 449
    .local v1, "ln":[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 450
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->line_number_vec:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;->getLineNumber()Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    move-result-object v3

    aput-object v3, v1, v2

    .line 449
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 452
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;

    const-string v3, "LineNumberTable"

    invoke-virtual {p1, v3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v3

    array-length v4, v1

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x2

    .line 453
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v5

    invoke-direct {v2, v3, v4, v1, v5}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;-><init>(II[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 452
    return-object v2
.end method

.method public getLineNumbers()[Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;
    .locals 2

    .line 437
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->line_number_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;

    .line 438
    .local v0, "lg":[Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->line_number_vec:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 439
    return-object v0
.end method

.method public getLocalVariableTable(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;
    .locals 7
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 386
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getLocalVariables()[Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    move-result-object v0

    .line 387
    .local v0, "lg":[Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    array-length v1, v0

    .line 388
    .local v1, "size":I
    new-array v2, v1, [Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    .line 389
    .local v2, "lv":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 390
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getLocalVariable(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 389
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 392
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    const-string v4, "LocalVariableTable"

    invoke-virtual {p1, v4}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v4

    array-length v5, v2

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x2

    .line 393
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v6

    invoke-direct {v3, v4, v5, v2, v6}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;-><init>(II[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 392
    return-object v3
.end method

.method public getLocalVariableTypeTable()Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;
    .locals 1

    .line 400
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->local_variable_type_table:Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;

    return-object v0
.end method

.method public getLocalVariables()[Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    .locals 5

    .line 359
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->variable_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 360
    .local v0, "size":I
    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    .line 361
    .local v1, "lg":[Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->variable_vec:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 362
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 363
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    if-eqz v3, :cond_0

    .line 364
    aget-object v4, v1, v2

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->setStart(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 366
    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getEnd()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    if-eqz v3, :cond_1

    .line 367
    aget-object v4, v1, v2

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getEnd()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->setEnd(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 362
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    .line 371
    new-instance v2, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$2;

    invoke-direct {v2, p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$2;-><init>(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 378
    :cond_3
    return-object v1
.end method

.method public getMaxLocals()I
    .locals 1

    .line 801
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->max_locals:I

    return v0
.end method

.method public getMaxStack()I
    .locals 1

    .line 814
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->max_stack:I

    return v0
.end method

.method public getMethod()Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .locals 24

    .line 649
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getSignature()Ljava/lang/String;

    move-result-object v1

    .line 650
    .local v1, "signature":Ljava/lang/String;
    invoke-super/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v2

    .line 651
    .local v2, "_cp":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    invoke-super/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v3

    .line 652
    .local v3, "name_index":I
    invoke-virtual {v2, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v10

    .line 655
    .local v10, "signature_index":I
    const/4 v4, 0x0

    .line 656
    .local v4, "byte_code":[B
    iget-object v5, v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    if-eqz v5, :cond_0

    .line 657
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getByteCode()[B

    move-result-object v4

    move-object v9, v4

    goto :goto_0

    .line 656
    :cond_0
    move-object v9, v4

    .line 659
    .end local v4    # "byte_code":[B
    .local v9, "byte_code":[B
    :goto_0
    const/4 v4, 0x0

    .line 660
    .local v4, "lnt":Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    const/4 v5, 0x0

    .line 663
    .local v5, "lvt":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;
    iget-object v6, v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->variable_vec:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    iget-boolean v6, v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->strip_attributes:Z

    if-nez v6, :cond_1

    .line 664
    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getLocalVariableTable(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->updateLocalVariableTable(Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;)V

    .line 665
    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getLocalVariableTable(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    move-result-object v6

    move-object v5, v6

    invoke-virtual {v0, v6}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addCodeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    move-object v8, v5

    goto :goto_1

    .line 667
    :cond_1
    move-object v8, v5

    .end local v5    # "lvt":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;
    .local v8, "lvt":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;
    :goto_1
    iget-object v5, v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->local_variable_type_table:Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;

    if-eqz v5, :cond_3

    .line 669
    if-eqz v8, :cond_2

    .line 670
    invoke-direct {v0, v8}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->adjustLocalVariableTypeTable(Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;)V

    .line 672
    :cond_2
    iget-object v5, v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->local_variable_type_table:Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;

    invoke-virtual {v0, v5}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addCodeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    .line 674
    :cond_3
    iget-object v5, v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->line_number_vec:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    iget-boolean v5, v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->strip_attributes:Z

    if-nez v5, :cond_4

    .line 675
    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getLineNumberTable(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;

    move-result-object v5

    move-object v4, v5

    invoke-virtual {v0, v5}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addCodeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    move-object v7, v4

    goto :goto_2

    .line 677
    :cond_4
    move-object v7, v4

    .end local v4    # "lnt":Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    .local v7, "lnt":Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getCodeAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v6

    .line 680
    .local v6, "code_attrs":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    const/4 v4, 0x0

    .line 681
    .local v4, "attrs_len":I
    array-length v5, v6

    const/4 v11, 0x0

    move/from16 v20, v4

    move v4, v11

    .end local v4    # "attrs_len":I
    .local v20, "attrs_len":I
    :goto_3
    if-ge v4, v5, :cond_5

    aget-object v12, v6, v4

    .line 682
    .local v12, "code_attr":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getLength()I

    move-result v13

    add-int/lit8 v13, v13, 0x6

    add-int v20, v20, v13

    .line 681
    .end local v12    # "code_attr":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 684
    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getCodeExceptions()[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    move-result-object v5

    .line 685
    .local v5, "c_exc":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    array-length v4, v5

    mul-int/lit8 v21, v4, 0x8

    .line 686
    .local v21, "exc_len":I
    const/4 v4, 0x0

    .line 687
    .local v4, "code":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    iget-object v12, v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    if-eqz v12, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->isAbstract()Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->isNative()Z

    move-result v12

    if-nez v12, :cond_8

    .line 689
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v15

    .line 690
    .local v15, "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    array-length v12, v15

    :goto_4
    if-ge v11, v12, :cond_7

    aget-object v13, v15, v11

    .line 691
    .local v13, "a":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    instance-of v14, v13, Lorg/checkerframework/org/apache/bcel/classfile/Code;

    if-eqz v14, :cond_6

    .line 692
    invoke-virtual {v0, v13}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->removeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    .line 690
    .end local v13    # "a":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 695
    :cond_7
    new-instance v22, Lorg/checkerframework/org/apache/bcel/classfile/Code;

    const-string v11, "Code"

    invoke-virtual {v2, v11}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v12

    array-length v11, v9

    add-int/lit8 v11, v11, 0x8

    add-int/lit8 v11, v11, 0x2

    add-int v11, v11, v21

    add-int/lit8 v11, v11, 0x2

    add-int v13, v11, v20

    iget v14, v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->max_stack:I

    iget v11, v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->max_locals:I

    .line 698
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v19

    move/from16 v16, v11

    move-object/from16 v11, v22

    move-object/from16 v23, v15

    .end local v15    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .local v23, "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    move/from16 v15, v16

    move-object/from16 v16, v9

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    invoke-direct/range {v11 .. v19}, Lorg/checkerframework/org/apache/bcel/classfile/Code;-><init>(IIII[B[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    move-object/from16 v4, v22

    .line 699
    invoke-virtual {v0, v4}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    move-object v11, v4

    goto :goto_5

    .line 701
    .end local v23    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_8
    move-object v11, v4

    .end local v4    # "code":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    .local v11, "code":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    :goto_5
    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addAnnotationsAsAttribute(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 702
    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addParameterAnnotationsAsAttribute(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 703
    const/4 v4, 0x0

    .line 704
    .local v4, "et":Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;
    iget-object v12, v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->throws_vec:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_9

    .line 705
    invoke-direct {v0, v2}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getExceptionTable(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;

    move-result-object v12

    move-object v4, v12

    invoke-virtual {v0, v12}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    goto :goto_6

    .line 704
    :cond_9
    move-object v12, v4

    .line 708
    .end local v4    # "et":Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;
    .local v12, "et":Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;
    :goto_6
    new-instance v13, Lorg/checkerframework/org/apache/bcel/classfile/Method;

    invoke-super/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getAccessFlags()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v15

    .line 709
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v16

    move-object v4, v13

    move-object/from16 v17, v5

    .end local v5    # "c_exc":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    .local v17, "c_exc":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    move v5, v14

    move-object v14, v6

    .end local v6    # "code_attrs":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .local v14, "code_attrs":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    move v6, v3

    move-object/from16 v18, v1

    move-object v1, v7

    .end local v7    # "lnt":Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    .local v1, "lnt":Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    .local v18, "signature":Ljava/lang/String;
    move v7, v10

    move-object/from16 v19, v2

    move-object v2, v8

    .end local v8    # "lvt":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;
    .local v2, "lvt":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;
    .local v19, "_cp":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    move-object v8, v15

    move-object v15, v9

    .end local v9    # "byte_code":[B
    .local v15, "byte_code":[B
    move-object/from16 v9, v16

    invoke-direct/range {v4 .. v9}, Lorg/checkerframework/org/apache/bcel/classfile/Method;-><init>(III[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 711
    .local v4, "m":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    if-eqz v2, :cond_a

    .line 712
    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->removeCodeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    .line 714
    :cond_a
    iget-object v5, v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->local_variable_type_table:Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;

    if-eqz v5, :cond_b

    .line 715
    invoke-virtual {v0, v5}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->removeCodeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    .line 717
    :cond_b
    if-eqz v1, :cond_c

    .line 718
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->removeCodeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    .line 720
    :cond_c
    if-eqz v11, :cond_d

    .line 721
    invoke-virtual {v0, v11}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->removeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    .line 723
    :cond_d
    if-eqz v12, :cond_e

    .line 724
    invoke-virtual {v0, v12}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->removeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    .line 726
    :cond_e
    return-object v4
.end method

.method public getReturnType()Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1

    .line 836
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    .line 892
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->arg_types:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    invoke-static {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getMethodSignature(Lorg/checkerframework/org/apache/bcel/generic/Type;[Lorg/checkerframework/org/apache/bcel/generic/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1289
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    invoke-interface {v0, p0}, Lorg/checkerframework/org/apache/bcel/util/BCELComparator;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public removeCodeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V
    .locals 1
    .param p1, "a"    # Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 593
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->code_attrs_vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 594
    return-void
.end method

.method public removeCodeAttributes()V
    .locals 1

    .line 601
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->local_variable_type_table:Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;

    .line 602
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->code_attrs_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 603
    return-void
.end method

.method public removeException(Ljava/lang/String;)V
    .locals 1
    .param p1, "c"    # Ljava/lang/String;

    .line 533
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->throws_vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 534
    return-void
.end method

.method public removeExceptionHandler(Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;)V
    .locals 1
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;

    .line 483
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->exception_vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 484
    return-void
.end method

.method public removeExceptionHandlers()V
    .locals 1

    .line 491
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->exception_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 492
    return-void
.end method

.method public removeExceptions()V
    .locals 1

    .line 541
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->throws_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 542
    return-void
.end method

.method public removeLineNumber(Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;)V
    .locals 1
    .param p1, "l"    # Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;

    .line 421
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->line_number_vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 422
    return-void
.end method

.method public removeLineNumbers()V
    .locals 1

    .line 429
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->line_number_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 430
    return-void
.end method

.method public removeLocalVariable(Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;)V
    .locals 1
    .param p1, "l"    # Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    .line 336
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->dispose()V

    .line 337
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->variable_vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 338
    return-void
.end method

.method public removeLocalVariableTypeTable()V
    .locals 1

    .line 586
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->local_variable_type_table:Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;

    .line 587
    return-void
.end method

.method public removeLocalVariables()V
    .locals 2

    .line 345
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->variable_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    .line 346
    .local v1, "lv":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->dispose()V

    .line 347
    .end local v1    # "lv":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    goto :goto_0

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->variable_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 349
    return-void
.end method

.method public removeNOPs()V
    .locals 12

    .line 770
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    if-eqz v0, :cond_2

    .line 774
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    .local v0, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_0
    if-eqz v0, :cond_2

    .line 775
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    .line 776
    .local v1, "next":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v2

    instance-of v2, v2, Lorg/checkerframework/org/apache/bcel/generic/NOP;

    if-eqz v2, :cond_1

    .line 778
    :try_start_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-virtual {v2, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->delete(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    :try_end_0
    .catch Lorg/checkerframework/org/apache/bcel/generic/TargetLostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    goto :goto_3

    .line 779
    :catch_0
    move-exception v2

    .line 780
    .local v2, "e":Lorg/checkerframework/org/apache/bcel/generic/TargetLostException;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/TargetLostException;->getTargets()[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    .line 781
    .local v7, "target":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getTargeters()[Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;

    move-result-object v8

    array-length v9, v8

    move v10, v5

    :goto_2
    if-ge v10, v9, :cond_0

    aget-object v11, v8, v10

    .line 782
    .local v11, "targeter":Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;
    invoke-interface {v11, v7, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;->updateTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 781
    .end local v11    # "targeter":Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 780
    .end local v7    # "target":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 774
    .end local v2    # "e":Lorg/checkerframework/org/apache/bcel/generic/TargetLostException;
    :cond_1
    :goto_3
    move-object v0, v1

    goto :goto_0

    .line 789
    .end local v0    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v1    # "next":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_2
    return-void
.end method

.method public removeObserver(Lorg/checkerframework/org/apache/bcel/generic/MethodObserver;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/MethodObserver;

    .line 1084
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->observers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1085
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1087
    :cond_0
    return-void
.end method

.method public setArgumentName(ILjava/lang/String;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 871
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->arg_names:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 872
    return-void
.end method

.method public setArgumentNames([Ljava/lang/String;)V
    .locals 0
    .param p1, "arg_names"    # [Ljava/lang/String;

    .line 861
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->arg_names:[Ljava/lang/String;

    .line 862
    return-void
.end method

.method public setArgumentType(ILorg/checkerframework/org/apache/bcel/generic/Type;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 851
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->arg_types:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    aput-object p2, v0, p1

    .line 852
    return-void
.end method

.method public setArgumentTypes([Lorg/checkerframework/org/apache/bcel/generic/Type;)V
    .locals 0
    .param p1, "arg_types"    # [Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 841
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->arg_types:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 842
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "class_name"    # Ljava/lang/String;

    .line 826
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->class_name:Ljava/lang/String;

    .line 827
    return-void
.end method

.method public setInstructionList(Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)V
    .locals 0
    .param p1, "il"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    .line 886
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    .line 887
    return-void
.end method

.method public setMaxLocals()V
    .locals 6

    .line 912
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 913
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->isStatic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 914
    .local v0, "max":I
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->arg_types:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    if-eqz v2, :cond_0

    .line 915
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 916
    .local v4, "arg_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v5

    add-int/2addr v0, v5

    .line 915
    .end local v4    # "arg_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 919
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    .local v1, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_1
    if-eqz v1, :cond_3

    .line 920
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v2

    .line 921
    .local v2, "ins":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    instance-of v3, v2, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;

    if-nez v3, :cond_1

    instance-of v3, v2, Lorg/checkerframework/org/apache/bcel/generic/RET;

    if-nez v3, :cond_1

    instance-of v3, v2, Lorg/checkerframework/org/apache/bcel/generic/IINC;

    if-eqz v3, :cond_2

    .line 923
    :cond_1
    move-object v3, v2

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/IndexedInstruction;

    invoke-interface {v3}, Lorg/checkerframework/org/apache/bcel/generic/IndexedInstruction;->getIndex()I

    move-result v3

    move-object v4, v2

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;

    .line 924
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v4

    add-int/2addr v3, v4

    .line 925
    .local v3, "index":I
    if-le v3, v0, :cond_2

    .line 926
    move v0, v3

    .line 919
    .end local v2    # "ins":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .end local v3    # "index":I
    :cond_2
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    goto :goto_1

    .line 930
    .end local v1    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_3
    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->max_locals:I

    .line 931
    .end local v0    # "max":I
    goto :goto_2

    .line 932
    :cond_4
    iput v1, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->max_locals:I

    .line 934
    :goto_2
    return-void
.end method

.method public setMaxLocals(I)V
    .locals 0
    .param p1, "m"    # I

    .line 796
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->max_locals:I

    .line 797
    return-void
.end method

.method public setMaxStack()V
    .locals 3

    .line 900
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    if-eqz v0, :cond_0

    .line 901
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getExceptionHandlers()[Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getMaxStack(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;[Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->max_stack:I

    goto :goto_0

    .line 903
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->max_stack:I

    .line 905
    :goto_0
    return-void
.end method

.method public setMaxStack(I)V
    .locals 0
    .param p1, "m"    # I

    .line 809
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->max_stack:I

    .line 810
    return-void
.end method

.method public setReturnType(Lorg/checkerframework/org/apache/bcel/generic/Type;)V
    .locals 0
    .param p1, "return_type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 831
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setType(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 832
    return-void
.end method

.method public stripAttributes(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 941
    iput-boolean p1, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->strip_attributes:Z

    .line 942
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 9
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1111
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getAccessFlags()I

    move-result v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->accessToString(I)Ljava/lang/String;

    move-result-object v0

    .line 1112
    .local v0, "access":Ljava/lang/String;
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->arg_types:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    invoke-static {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getMethodSignature(Lorg/checkerframework/org/apache/bcel/generic/Type;[Lorg/checkerframework/org/apache/bcel/generic/Type;)Ljava/lang/String;

    move-result-object v1

    .line 1113
    .local v1, "signature":Ljava/lang/String;
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1114
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getLocalVariableTable(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    move-result-object v3

    .line 1113
    const/4 v4, 0x1

    invoke-static {v1, v2, v0, v4, v3}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->methodSignatureToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;)Ljava/lang/String;

    move-result-object v1

    .line 1115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1116
    .local v2, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 1117
    .local v6, "a":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    instance-of v7, v6, Lorg/checkerframework/org/apache/bcel/classfile/Code;

    if-nez v7, :cond_0

    instance-of v7, v6, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;

    if-nez v7, :cond_0

    .line 1118
    const-string v7, " ["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    .end local v6    # "a":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1122
    :cond_1
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->throws_vec:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1123
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->throws_vec:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1124
    .local v4, "throwsDescriptor":Ljava/lang/String;
    const-string v5, "\n\t\tthrows "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    .end local v4    # "throwsDescriptor":Ljava/lang/String;
    goto :goto_1

    .line 1127
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public update()V
    .locals 2

    .line 1095
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->observers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1096
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/MethodObserver;

    .line 1097
    .local v1, "observer":Lorg/checkerframework/org/apache/bcel/generic/MethodObserver;
    invoke-interface {v1, p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodObserver;->notify(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)V

    .line 1098
    .end local v1    # "observer":Lorg/checkerframework/org/apache/bcel/generic/MethodObserver;
    goto :goto_0

    .line 1100
    :cond_0
    return-void
.end method
