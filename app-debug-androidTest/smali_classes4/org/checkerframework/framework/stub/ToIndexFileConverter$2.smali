.class Lorg/checkerframework/framework/stub/ToIndexFileConverter$2;
.super Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorAdapter;
.source "ToIndexFileConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/framework/stub/ToIndexFileConverter;->getJVML(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorAdapter<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/framework/stub/ToIndexFileConverter;


# direct methods
.method constructor <init>(Lorg/checkerframework/framework/stub/ToIndexFileConverter;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/framework/stub/ToIndexFileConverter;

    .line 549
    iput-object p1, p0, Lorg/checkerframework/framework/stub/ToIndexFileConverter$2;->this$0:Lorg/checkerframework/framework/stub/ToIndexFileConverter;

    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 549
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/ToIndexFileConverter$2;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 549
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/ToIndexFileConverter$2;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 549
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/ToIndexFileConverter$2;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 549
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/ToIndexFileConverter$2;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 549
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/ToIndexFileConverter$2;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Ljava/lang/Void;)Ljava/lang/String;
    .locals 5
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
    .param p2, "v"    # Ljava/lang/Void;

    .line 592
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getElementType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 593
    .local v0, "typeName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 594
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getArrayLevel()I

    move-result v2

    .line 595
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 596
    const-string v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 598
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Void;)Ljava/lang/String;
    .locals 6
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .param p2, "v"    # Ljava/lang/Void;

    .line 554
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "typeName":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/framework/stub/ToIndexFileConverter$2;->this$0:Lorg/checkerframework/framework/stub/ToIndexFileConverter;

    invoke-static {v1, v0}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->access$100(Lorg/checkerframework/framework/stub/ToIndexFileConverter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, "name":Ljava/lang/String;
    const-string v2, ";"

    const-string v3, "L"

    if-nez v1, :cond_0

    .line 561
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 563
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\."

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-static {v5, v4}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Void;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
    .param p2, "v"    # Ljava/lang/Void;

    .line 568
    sget-object v0, Lorg/checkerframework/framework/stub/ToIndexFileConverter$3;->$SwitchMap$com$github$javaparser$ast$type$PrimitiveType$Primitive:[I

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 586
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown primitive type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :pswitch_0
    const-string v0, "S"

    return-object v0

    .line 582
    :pswitch_1
    const-string v0, "J"

    return-object v0

    .line 580
    :pswitch_2
    const-string v0, "I"

    return-object v0

    .line 578
    :pswitch_3
    const-string v0, "F"

    return-object v0

    .line 576
    :pswitch_4
    const-string v0, "D"

    return-object v0

    .line 574
    :pswitch_5
    const-string v0, "C"

    return-object v0

    .line 572
    :pswitch_6
    const-string v0, "B"

    return-object v0

    .line 570
    :pswitch_7
    const-string v0, "Z"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Ljava/lang/Void;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;
    .param p2, "v"    # Ljava/lang/Void;

    .line 604
    const-string v0, "V"

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Ljava/lang/Void;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;
    .param p2, "v"    # Ljava/lang/Void;

    .line 609
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
