.class public Lcom/baidu/yi/sdk/ubc/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private b:Ljavax/xml/parsers/DocumentBuilder;

.field private c:Lorg/w3c/dom/Document;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/yi/sdk/ubc/d;->a:Ljavax/xml/parsers/DocumentBuilderFactory;

    iput-object v0, p0, Lcom/baidu/yi/sdk/ubc/d;->b:Ljavax/xml/parsers/DocumentBuilder;

    iput-object v0, p0, Lcom/baidu/yi/sdk/ubc/d;->c:Lorg/w3c/dom/Document;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/ubc/d;->a(Ljava/io/InputStream;)V

    return-void
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 1

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/yi/sdk/ubc/d;->a:Ljavax/xml/parsers/DocumentBuilderFactory;

    iget-object v0, p0, Lcom/baidu/yi/sdk/ubc/d;->a:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/yi/sdk/ubc/d;->b:Ljavax/xml/parsers/DocumentBuilder;

    iget-object v0, p0, Lcom/baidu/yi/sdk/ubc/d;->b:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/yi/sdk/ubc/d;->c:Lorg/w3c/dom/Document;

    iget-object v0, p0, Lcom/baidu/yi/sdk/ubc/d;->c:Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->normalize()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2

    iget-object v0, p0, Lcom/baidu/yi/sdk/ubc/d;->c:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Z
    .locals 9

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v0, "Response"

    invoke-virtual {p0, v0}, Lcom/baidu/yi/sdk/ubc/d;->b(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "upload faile, no Response node!"

    invoke-static {v0}, Lcom/baidu/yi/sdk/ubc/c;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    move v0, v1

    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Header"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    move v2, v1

    :goto_2
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lt v2, v6, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v5, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ResponseType"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x6

    if-eq v7, v6, :cond_4

    const-string v0, "upload faile, ResponseType is not 6!!"

    invoke-static {v0}, Lcom/baidu/yi/sdk/ubc/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const-string v6, "Body"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    move v2, v1

    :goto_3
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_2

    invoke-interface {v5, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Status"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_6

    const-string v0, "upload success, response status is 1"

    invoke-static {v0}, Lcom/baidu/yi/sdk/ubc/c;->a(Ljava/lang/String;)V

    move v1, v3

    goto/16 :goto_0

    :cond_6
    const-string v0, "upload failed, response status is not 1"

    invoke-static {v0}, Lcom/baidu/yi/sdk/ubc/c;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public b(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    iget-object v0, p0, Lcom/baidu/yi/sdk/ubc/d;->c:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method
