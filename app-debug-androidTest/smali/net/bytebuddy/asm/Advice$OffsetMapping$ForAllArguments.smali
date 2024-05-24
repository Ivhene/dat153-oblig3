.class public Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$OffsetMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$OffsetMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForAllArguments"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments$Factory;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final readOnly:Z

.field private final target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/asm/Advice$AllArguments;)V
    .locals 2
    .param p1, "target"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .param p2, "annotation"    # Lnet/bytebuddy/asm/Advice$AllArguments;

    .line 1915
    invoke-interface {p2}, Lnet/bytebuddy/asm/Advice$AllArguments;->readOnly()Z

    move-result v0

    invoke-interface {p2}, Lnet/bytebuddy/asm/Advice$AllArguments;->typing()Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;ZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    .line 1916
    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;ZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V
    .locals 0
    .param p1, "target"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .param p2, "readOnly"    # Z
    .param p3, "typing"    # Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    .line 1925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1926
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1927
    iput-boolean p2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->readOnly:Z

    .line 1928
    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    .line 1929
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->readOnly:Z

    check-cast p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;

    iget-boolean v3, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->readOnly:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->readOnly:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler;Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;
    .locals 16
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p3, "assigner"    # Lnet/bytebuddy/implementation/bytecode/assign/Assigner;
    .param p4, "argumentHandler"    # Lnet/bytebuddy/asm/Advice$ArgumentHandler;
    .param p5, "sort"    # Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;

    .line 1939
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1940
    .local v3, "valueReads":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/implementation/bytecode/StackManipulation;>;"
    invoke-interface/range {p2 .. p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/method/ParameterList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, " to "

    const-string v7, "Cannot assign "

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/method/ParameterDescription;

    .line 1941
    .local v5, "parameterDescription":Lnet/bytebuddy/description/method/ParameterDescription;
    invoke-interface {v5}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v11

    iget-object v12, v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v13, v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {v1, v11, v12, v13}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v11

    .line 1942
    .local v11, "readAssignment":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    invoke-interface {v11}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1945
    new-instance v6, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    new-array v7, v10, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v5}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v10

    invoke-static {v10}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    move-result-object v10

    .line 1946
    invoke-interface {v5}, Lnet/bytebuddy/description/method/ParameterDescription;->getOffset()I

    move-result v12

    invoke-interface {v2, v12}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->argument(I)I

    move-result v12

    invoke-virtual {v10, v12}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadFrom(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v10

    aput-object v10, v7, v9

    aput-object v11, v7, v8

    invoke-direct {v6, v7}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 1945
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1947
    .end local v5    # "parameterDescription":Lnet/bytebuddy/description/method/ParameterDescription;
    .end local v11    # "readAssignment":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    goto :goto_0

    .line 1943
    .restart local v5    # "parameterDescription":Lnet/bytebuddy/description/method/ParameterDescription;
    .restart local v11    # "readAssignment":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1948
    .end local v5    # "parameterDescription":Lnet/bytebuddy/description/method/ParameterDescription;
    .end local v11    # "readAssignment":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    :cond_1
    iget-boolean v4, v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->readOnly:Z

    if-eqz v4, :cond_2

    .line 1949
    new-instance v4, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForArray$ReadOnly;

    iget-object v5, v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-direct {v4, v5, v3}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForArray$ReadOnly;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    return-object v4

    .line 1951
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v5

    invoke-interface {v5}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1952
    .local v4, "valueWrites":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/implementation/bytecode/StackManipulation;>;"
    invoke-interface/range {p2 .. p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v5

    invoke-interface {v5}, Lnet/bytebuddy/description/method/ParameterList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/bytebuddy/description/method/ParameterDescription;

    .line 1953
    .local v11, "parameterDescription":Lnet/bytebuddy/description/method/ParameterDescription;
    iget-object v12, v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v11}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v13

    iget-object v14, v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {v1, v12, v13, v14}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v12

    .line 1954
    .local v12, "writeAssignment":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    invoke-interface {v12}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1957
    new-instance v13, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    new-array v14, v10, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    aput-object v12, v14, v9

    invoke-interface {v11}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v15

    invoke-static {v15}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    move-result-object v15

    .line 1958
    invoke-interface {v11}, Lnet/bytebuddy/description/method/ParameterDescription;->getOffset()I

    move-result v9

    invoke-interface {v2, v9}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->argument(I)I

    move-result v9

    invoke-virtual {v15, v9}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->storeAt(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v9

    aput-object v9, v14, v8

    invoke-direct {v13, v14}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 1957
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1959
    .end local v11    # "parameterDescription":Lnet/bytebuddy/description/method/ParameterDescription;
    .end local v12    # "writeAssignment":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    const/4 v9, 0x0

    goto :goto_1

    .line 1955
    .restart local v11    # "parameterDescription":Lnet/bytebuddy/description/method/ParameterDescription;
    .restart local v12    # "writeAssignment":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1960
    .end local v11    # "parameterDescription":Lnet/bytebuddy/description/method/ParameterDescription;
    .end local v12    # "writeAssignment":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    :cond_4
    new-instance v5, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForArray$ReadWrite;

    iget-object v6, v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-direct {v5, v6, v3, v4}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForArray$ReadWrite;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;)V

    return-object v5
.end method
