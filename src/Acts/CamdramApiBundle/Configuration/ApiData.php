<?php
namespace Acts\CamdramApiBundle\Configuration;

class ApiData {

    /**
     * @var \Acts\CamdramApiBundle\Configuration\Annotation\Feed
     */
    private $feed;

    /**
     * @var \Acts\CamdramApiBundle\Configuration\LinkMetadata[]
     */
    private $links;

    /**
     * @return \Acts\CamdramApiBundle\Configuration\Annotation\Feed
     */
    public function getFeed()
    {
        return $this->feed;
    }

    /**
     * @param \Acts\CamdramApiBundle\Configuration\Annotation\Feed $feed
     */
    public function setFeed($feed)
    {
        $this->feed = $feed;
    }

    /**
     * @return \Acts\CamdramApiBundle\Configuration\LinkMetadata[]
     */
    public function getLinks()
    {
        return $this->links;
    }

    /**
     * @param \Acts\CamdramApiBundle\Configuration\LinkMetadata[] $links
     */
    public function setLinks($links)
    {
        $this->links = $links;
    }

    public function addLink(LinkMetadata $link)
    {
        $this->links[] = $link;
    }

} 