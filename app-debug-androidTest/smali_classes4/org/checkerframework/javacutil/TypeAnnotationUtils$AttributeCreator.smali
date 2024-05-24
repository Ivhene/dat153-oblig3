.class Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;
.super Ljava/lang/Object;
.source "TypeAnnotationUtils.java"

# interfaces
.implements Ljavax/lang/model/element/AnnotationValueVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/javacutil/TypeAnnotationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttributeCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/lang/model/element/AnnotationValueVisitor<",
        "Lcom/sun/tools/javac/code/Attribute;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final elements:Ljavax/lang/model/util/Elements;

.field private final javacTypes:Lcom/sun/tools/javac/code/Types;

.field private final meth:Ljavax/lang/model/element/ExecutableElement;

.field private final modelTypes:Ljavax/lang/model/util/Types;

.field private final processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;


# direct methods
.method public constructor <init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/element/ExecutableElement;)V
    .locals 2
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p2, "meth"    # Ljavax/lang/model/element/ExecutableElement;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 170
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v0

    .line 171
    .local v0, "context":Lcom/sun/tools/javac/util/Context;
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->elements:Ljavax/lang/model/util/Elements;

    .line 172
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->modelTypes:Ljavax/lang/model/util/Types;

    .line 173
    invoke-static {v0}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->javacTypes:Lcom/sun/tools/javac/code/Types;

    .line 175
    iput-object p2, p0, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->meth:Ljavax/lang/model/element/ExecutableElement;

    .line 176
    return-void
.end method


# virtual methods
.method public visit(Ljavax/lang/model/element/AnnotationValue;)Lcom/sun/tools/javac/code/Attribute;
    .locals 1
    .param p1, "av"    # Ljavax/lang/model/element/AnnotationValue;

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->visit(Ljavax/lang/model/element/AnnotationValue;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public visit(Ljavax/lang/model/element/AnnotationValue;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;
    .locals 1
    .param p1, "av"    # Ljavax/lang/model/element/AnnotationValue;
    .param p2, "p"    # Ljava/lang/Void;

    .line 180
    invoke-interface {p1, p0, p2}, Ljavax/lang/model/element/AnnotationValue;->accept(Ljavax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Attribute;

    return-object v0
.end method

.method public bridge synthetic visit(Ljavax/lang/model/element/AnnotationValue;)Ljava/lang/Object;
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->visit(Ljavax/lang/model/element/AnnotationValue;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Ljavax/lang/model/element/AnnotationValue;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 160
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->visit(Ljavax/lang/model/element/AnnotationValue;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;
    .locals 1
    .param p1, "a"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "p"    # Ljava/lang/Void;

    .line 264
    iget-object v0, p0, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->createCompoundFromAnnotationMirror(Ljavax/lang/model/element/AnnotationMirror;Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/tools/javac/code/Attribute$Compound;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 160
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Ljava/util/List;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;
    .locals 4
    .param p2, "p"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;",
            "Ljava/lang/Void;",
            ")",
            "Lcom/sun/tools/javac/code/Attribute;"
        }
    .end annotation

    .line 269
    .local p1, "vals":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationValue;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 271
    .local v0, "valAttrs":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationValue;

    .line 272
    .local v2, "av":Ljavax/lang/model/element/AnnotationValue;
    invoke-interface {v2, p0, p2}, Ljavax/lang/model/element/AnnotationValue;->accept(Ljavax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/code/Attribute;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 273
    .end local v2    # "av":Ljavax/lang/model/element/AnnotationValue;
    goto :goto_0

    .line 274
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->modelTypes:Ljavax/lang/model/util/Types;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Attribute;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Attribute;->type:Lcom/sun/tools/javac/code/Type;

    invoke-interface {v1, v2}, Ljavax/lang/model/util/Types;->getArrayType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ArrayType;

    move-result-object v1

    .line 275
    .local v1, "arrayType":Ljavax/lang/model/type/ArrayType;
    new-instance v2, Lcom/sun/tools/javac/code/Attribute$Array;

    move-object v3, v1

    check-cast v3, Lcom/sun/tools/javac/code/Type;

    invoke-direct {v2, v3, v0}, Lcom/sun/tools/javac/code/Attribute$Array;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)V

    return-object v2

    .line 277
    .end local v0    # "valAttrs":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute;>;"
    .end local v1    # "arrayType":Ljavax/lang/model/type/ArrayType;
    :cond_1
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Array;

    iget-object v1, p0, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->meth:Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Attribute$Array;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)V

    return-object v0
.end method

.method public bridge synthetic visitArray(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 160
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->visitArray(Ljava/util/List;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public visitBoolean(ZLjava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;
    .locals 4
    .param p1, "b"    # Z
    .param p2, "p"    # Ljava/lang/Void;

    .line 190
    iget-object v0, p0, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->modelTypes:Ljavax/lang/model/util/Types;

    sget-object v1, Ljavax/lang/model/type/TypeKind;->BOOLEAN:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    .line 191
    .local v0, "booleanType":Ljavax/lang/model/type/TypeMirror;
    new-instance v1, Lcom/sun/tools/javac/code/Attribute$Constant;

    move-object v2, v0

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sun/tools/javac/code/Attribute$Constant;-><init>(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic visitBoolean(ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 160
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->visitBoolean(ZLjava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public visitByte(BLjava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;
    .locals 4
    .param p1, "b"    # B
    .param p2, "p"    # Ljava/lang/Void;

    .line 196
    iget-object v0, p0, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->modelTypes:Ljavax/lang/model/util/Types;

    sget-object v1, Ljavax/lang/model/type/TypeKind;->BYTE:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    .line 197
    .local v0, "byteType":Ljavax/lang/model/type/TypeMirror;
    new-instance v1, Lcom/sun/tools/javac/code/Attribute$Constant;

    move-object v2, v0

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sun/tools/javac/code/Attribute$Constant;-><init>(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic visitByte(BLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 160
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->visitByte(BLjava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public visitChar(CLjava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;
    .locals 4
    .param p1, "c"    # C
    .param p2, "p"    # Ljava/lang/Void;

    .line 202
    iget-object v0, p0, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->modelTypes:Ljavax/lang/model/util/Types;

    sget-object v1, Ljavax/lang/model/type/TypeKind;->CHAR:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    .line 203
    .local v0, "charType":Ljavax/lang/model/type/TypeMirror;
    new-instance v1, Lcom/sun/tools/javac/code/Attribute$Constant;

    move-object v2, v0

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sun/tools/javac/code/Attribute$Constant;-><init>(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic visitChar(CLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 160
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->visitChar(CLjava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public visitDouble(DLjava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;
    .locals 4
    .param p1, "d"    # D
    .param p3, "p"    # Ljava/lang/Void;

    .line 208
    iget-object v0, p0, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->modelTypes:Ljavax/lang/model/util/Types;

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DOUBLE:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    .line 209
    .local v0, "doubleType":Ljavax/lang/model/type/TypeMirror;
    new-instance v1, Lcom/sun/tools/javac/code/Attribute$Constant;

    move-object v2, v0

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sun/tools/javac/code/Attribute$Constant;-><init>(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic visitDouble(DLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 160
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->visitDouble(DLjava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public visitEnumConstant(Ljavax/lang/model/element/VariableElement;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;
    .locals 3
    .param p1, "c"    # Ljavax/lang/model/element/VariableElement;
    .param p2, "p"    # Ljava/lang/Void;

    .line 253
    instance-of v0, p1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    if-eqz v0, :cond_0

    .line 254
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 255
    .local v0, "sym":Lcom/sun/tools/javac/code/Symbol$VarSymbol;
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->ENUM_CONSTANT:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_0

    .line 256
    new-instance v1, Lcom/sun/tools/javac/code/Attribute$Enum;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {v1, v2, v0}, Lcom/sun/tools/javac/code/Attribute$Enum;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V

    return-object v1

    .line 259
    .end local v0    # "sym":Lcom/sun/tools/javac/code/Symbol$VarSymbol;
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type of VariableElement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic visitEnumConstant(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 160
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->visitEnumConstant(Ljavax/lang/model/element/VariableElement;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public visitFloat(FLjava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;
    .locals 4
    .param p1, "f"    # F
    .param p2, "p"    # Ljava/lang/Void;

    .line 214
    iget-object v0, p0, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->modelTypes:Ljavax/lang/model/util/Types;

    sget-object v1, Ljavax/lang/model/type/TypeKind;->FLOAT:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    .line 215
    .local v0, "floatType":Ljavax/lang/model/type/TypeMirror;
    new-instance v1, Lcom/sun/tools/javac/code/Attribute$Constant;

    move-object v2, v0

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sun/tools/javac/code/Attribute$Constant;-><init>(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic visitFloat(FLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 160
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->visitFloat(FLjava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public visitInt(ILjava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;
    .locals 4
    .param p1, "i"    # I
    .param p2, "p"    # Ljava/lang/Void;

    .line 220
    iget-object v0, p0, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->modelTypes:Ljavax/lang/model/util/Types;

    sget-object v1, Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    .line 221
    .local v0, "intType":Ljavax/lang/model/type/TypeMirror;
    new-instance v1, Lcom/sun/tools/javac/code/Attribute$Constant;

    move-object v2, v0

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sun/tools/javac/code/Attribute$Constant;-><init>(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic visitInt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 160
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->visitInt(ILjava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public visitLong(JLjava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;
    .locals 4
    .param p1, "i"    # J
    .param p3, "p"    # Ljava/lang/Void;

    .line 226
    iget-object v0, p0, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->modelTypes:Ljavax/lang/model/util/Types;

    sget-object v1, Ljavax/lang/model/type/TypeKind;->LONG:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    .line 227
    .local v0, "longType":Ljavax/lang/model/type/TypeMirror;
    new-instance v1, Lcom/sun/tools/javac/code/Attribute$Constant;

    move-object v2, v0

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sun/tools/javac/code/Attribute$Constant;-><init>(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic visitLong(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 160
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->visitLong(JLjava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public visitShort(SLjava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;
    .locals 4
    .param p1, "s"    # S
    .param p2, "p"    # Ljava/lang/Void;

    .line 232
    iget-object v0, p0, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->modelTypes:Ljavax/lang/model/util/Types;

    sget-object v1, Ljavax/lang/model/type/TypeKind;->SHORT:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    .line 233
    .local v0, "shortType":Ljavax/lang/model/type/TypeMirror;
    new-instance v1, Lcom/sun/tools/javac/code/Attribute$Constant;

    move-object v2, v0

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sun/tools/javac/code/Attribute$Constant;-><init>(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic visitShort(SLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 160
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->visitShort(SLjava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public visitString(Ljava/lang/String;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/Void;

    .line 238
    iget-object v0, p0, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->elements:Ljavax/lang/model/util/Elements;

    const-string v1, "java.lang.String"

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 239
    .local v0, "stringType":Ljavax/lang/model/type/TypeMirror;
    new-instance v1, Lcom/sun/tools/javac/code/Attribute$Constant;

    move-object v2, v0

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    invoke-direct {v1, v2, p1}, Lcom/sun/tools/javac/code/Attribute$Constant;-><init>(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic visitString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 160
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->visitString(Ljava/lang/String;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;
    .locals 3
    .param p1, "t"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "p"    # Ljava/lang/Void;

    .line 244
    instance-of v0, p1, Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_0

    .line 245
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Class;

    iget-object v1, p0, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->javacTypes:Lcom/sun/tools/javac/code/Types;

    move-object v2, p1

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Attribute$Class;-><init>(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;)V

    return-object v0

    .line 247
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type of TypeMirror: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic visitType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 160
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->visitType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public visitUnknown(Ljavax/lang/model/element/AnnotationValue;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;
    .locals 3
    .param p1, "av"    # Ljavax/lang/model/element/AnnotationValue;
    .param p2, "p"    # Ljava/lang/Void;

    .line 283
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type of AnnotationValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic visitUnknown(Ljavax/lang/model/element/AnnotationValue;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 160
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;->visitUnknown(Ljavax/lang/model/element/AnnotationValue;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object p1

    return-object p1
.end method
