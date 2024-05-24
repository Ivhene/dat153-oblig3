.class public Lnet/bytebuddy/description/method/MethodDescription$Token;
.super Ljava/lang/Object;
.source "MethodDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/ByteCodeElement$Token;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/MethodDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/description/ByteCodeElement$Token<",
        "Lnet/bytebuddy/description/method/MethodDescription$Token;",
        ">;"
    }
.end annotation


# instance fields
.field private final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation
.end field

.field private final exceptionTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;"
        }
    .end annotation
.end field

.field private transient synthetic hashCode:I

.field private final modifiers:I

.field private final name:Ljava/lang/String;

.field private final parameterTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/method/ParameterDescription$Token;",
            ">;"
        }
    .end annotation
.end field

.field private final receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final typeVariableTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeVariableToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "modifiers"    # I

    .line 1766
    const-string v0, "<init>"

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription$Generic;->VOID:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-direct {p0, v0, p1, v1}, Lnet/bytebuddy/description/method/MethodDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)V

    .line 1767
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "modifiers"    # I
    .param p4, "returnType"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .param p9, "receiverType"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeVariableToken;",
            ">;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/method/ParameterDescription$Token;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")V"
        }
    .end annotation

    .line 1822
    .local p3, "typeVariableTokens":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/type/TypeVariableToken;>;"
    .local p5, "parameterTokens":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/method/ParameterDescription$Token;>;"
    .local p6, "exceptionTypes":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/type/TypeDescription$Generic;>;"
    .local p7, "annotations":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/annotation/AnnotationDescription;>;"
    .local p8, "defaultValue":Lnet/bytebuddy/description/annotation/AnnotationValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1823
    iput-object p1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->name:Ljava/lang/String;

    .line 1824
    iput p2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->modifiers:I

    .line 1825
    iput-object p3, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->typeVariableTokens:Ljava/util/List;

    .line 1826
    iput-object p4, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1827
    iput-object p5, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->parameterTokens:Ljava/util/List;

    .line 1828
    iput-object p6, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->exceptionTypes:Ljava/util/List;

    .line 1829
    iput-object p7, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->annotations:Ljava/util/List;

    .line 1830
    iput-object p8, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    .line 1831
    iput-object p9, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1832
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "modifiers"    # I
    .param p3, "returnType"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1778
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/bytebuddy/description/method/MethodDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    .line 1779
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "modifiers"    # I
    .param p3, "returnType"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)V"
        }
    .end annotation

    .line 1790
    .local p4, "parameterTypes":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/type/TypeDescription$Generic;>;"
    nop

    .line 1792
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    new-instance v5, Lnet/bytebuddy/description/method/ParameterDescription$Token$TypeList;

    invoke-direct {v5, p4}, Lnet/bytebuddy/description/method/ParameterDescription$Token$TypeList;-><init>(Ljava/util/List;)V

    .line 1795
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 1796
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    sget-object v8, Lnet/bytebuddy/description/annotation/AnnotationValue;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue;

    sget-object v9, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1790
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v9}, Lnet/bytebuddy/description/method/MethodDescription$Token;-><init>(Ljava/lang/String;ILjava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    .line 1799
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/ByteCodeElement$Token;
    .locals 0

    .line 1712
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/method/MethodDescription$Token;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/method/MethodDescription$Token;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/description/method/MethodDescription$Token;"
        }
    .end annotation

    .line 1919
    .local p1, "visitor":Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;, "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<+Lnet/bytebuddy/description/type/TypeDescription$Generic;>;"
    new-instance v10, Lnet/bytebuddy/description/method/MethodDescription$Token;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->name:Ljava/lang/String;

    iget v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->modifiers:I

    .line 1921
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getTypeVariableTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v3

    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1922
    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1923
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getParameterTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v5

    .line 1924
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeList$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->annotations:Ljava/util/List;

    iget-object v8, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-nez v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-object v9, v0

    goto :goto_0

    .line 1929
    :cond_0
    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-object v9, v0

    :goto_0
    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lnet/bytebuddy/description/method/MethodDescription$Token;-><init>(Ljava/lang/String;ILjava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    .line 1919
    return-object v10
.end method

.method public asSignatureToken(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;
    .locals 5
    .param p1, "declaringType"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 1939
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->typeVariableTokens:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    .line 1940
    .local v0, "visitor":Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;, "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<Lnet/bytebuddy/description/type/TypeDescription;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->parameterTokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1941
    .local v1, "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/type/TypeDescription;>;"
    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->parameterTokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    .line 1942
    .local v3, "parameter":Lnet/bytebuddy/description/method/ParameterDescription$Token;
    invoke-virtual {v3}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v4

    invoke-interface {v4, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1943
    .end local v3    # "parameter":Lnet/bytebuddy/description/method/ParameterDescription$Token;
    goto :goto_0

    .line 1944
    :cond_0
    new-instance v2, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    iget-object v3, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->name:Ljava/lang/String;

    iget-object v4, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v4, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v2, v3, v4, v1}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 1964
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1965
    return v0

    .line 1966
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_3

    .line 1969
    :cond_1
    move-object v2, p1

    check-cast v2, Lnet/bytebuddy/description/method/MethodDescription$Token;

    .line 1970
    .local v2, "token":Lnet/bytebuddy/description/method/MethodDescription$Token;
    iget v3, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->modifiers:I

    iget v4, v2, Lnet/bytebuddy/description/method/MethodDescription$Token;->modifiers:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->name:Ljava/lang/String;

    iget-object v4, v2, Lnet/bytebuddy/description/method/MethodDescription$Token;->name:Ljava/lang/String;

    .line 1971
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->typeVariableTokens:Ljava/util/List;

    iget-object v4, v2, Lnet/bytebuddy/description/method/MethodDescription$Token;->typeVariableTokens:Ljava/util/List;

    .line 1972
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v4, v2, Lnet/bytebuddy/description/method/MethodDescription$Token;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1973
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->parameterTokens:Ljava/util/List;

    iget-object v4, v2, Lnet/bytebuddy/description/method/MethodDescription$Token;->parameterTokens:Ljava/util/List;

    .line 1974
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->exceptionTypes:Ljava/util/List;

    iget-object v4, v2, Lnet/bytebuddy/description/method/MethodDescription$Token;->exceptionTypes:Ljava/util/List;

    .line 1975
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->annotations:Ljava/util/List;

    iget-object v4, v2, Lnet/bytebuddy/description/method/MethodDescription$Token;->annotations:Ljava/util/List;

    .line 1976
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    if-eqz v3, :cond_2

    iget-object v4, v2, Lnet/bytebuddy/description/method/MethodDescription$Token;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    .line 1977
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lnet/bytebuddy/description/method/MethodDescription$Token;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    if-nez v3, :cond_4

    :goto_0
    iget-object v3, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-eqz v3, :cond_3

    iget-object v4, v2, Lnet/bytebuddy/description/method/MethodDescription$Token;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1978
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_3
    iget-object v3, v2, Lnet/bytebuddy/description/method/MethodDescription$Token;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-nez v3, :cond_4

    :goto_1
    goto :goto_2

    :cond_4
    move v0, v1

    .line 1970
    :goto_2
    return v0

    .line 1967
    .end local v2    # "token":Lnet/bytebuddy/description/method/MethodDescription$Token;
    :cond_5
    :goto_3
    return v1
.end method

.method public getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    .line 1894
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->annotations:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation

    .line 1903
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    return-object v0
.end method

.method public getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 2

    .line 1885
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->exceptionTypes:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 1849
    iget v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->modifiers:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1840
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList<",
            "Lnet/bytebuddy/description/method/ParameterDescription$Token;",
            ">;"
        }
    .end annotation

    .line 1876
    new-instance v0, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->parameterTokens:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getReceiverType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    .line 1912
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    .line 1867
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public getTypeVariableTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList<",
            "Lnet/bytebuddy/description/type/TypeVariableToken;",
            ">;"
        }
    .end annotation

    .line 1858
    new-instance v0, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->typeVariableTokens:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 5
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "hashCode"
    .end annotation

    .line 1950
    iget v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->hashCode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_1

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/description/method/MethodDescription$Token;
    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 1951
    .local v2, "result":I
    mul-int/lit8 v3, v2, 0x1f

    iget v4, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->modifiers:I

    add-int/2addr v3, v4

    .line 1952
    .end local v2    # "result":I
    .local v3, "result":I
    mul-int/lit8 v2, v3, 0x1f

    iget-object v4, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->typeVariableTokens:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v2, v4

    .line 1953
    .end local v3    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v3, v2, 0x1f

    iget-object v4, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    .line 1954
    .end local v2    # "result":I
    .restart local v3    # "result":I
    mul-int/lit8 v2, v3, 0x1f

    iget-object v4, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->parameterTokens:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v2, v4

    .line 1955
    .end local v3    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v3, v2, 0x1f

    iget-object v4, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->exceptionTypes:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    .line 1956
    .end local v2    # "result":I
    .restart local v3    # "result":I
    mul-int/lit8 v2, v3, 0x1f

    iget-object v4, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->annotations:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v2, v4

    .line 1957
    .end local v3    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v3, v2, 0x1f

    iget-object v4, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    add-int/2addr v3, v4

    .line 1958
    .end local v2    # "result":I
    .restart local v3    # "result":I
    mul-int/lit8 v2, v3, 0x1f

    iget-object v4, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v1, v2

    .line 1959
    .end local v3    # "result":I
    .local v1, "result":I
    nop

    .end local v0    # "this":Lnet/bytebuddy/description/method/MethodDescription$Token;
    .end local v1    # "result":I
    :goto_1
    if-nez v1, :cond_3

    iget v1, v0, Lnet/bytebuddy/description/method/MethodDescription$Token;->hashCode:I

    goto :goto_2

    :cond_3
    iput v1, v0, Lnet/bytebuddy/description/method/MethodDescription$Token;->hashCode:I

    :goto_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MethodDescription.Token{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modifiers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->modifiers:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", typeVariableTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->typeVariableTokens:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", returnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parameterTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->parameterTokens:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exceptionTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->exceptionTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", annotations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->annotations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", receiverType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
